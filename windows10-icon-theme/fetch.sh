#!/bin/env bash
# fetch.sh - Download a file with resume and retry.
# Copyright (C) 2026 ChenPi11
# This file is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published
# by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Display usage information.
usage() {
    cat <<EOF
Usage: $0 <URL> <OUTPUT>
Download a file with resume and automatic retry (20 times, 10s interval).

Features:
- Supports HTTP_PROXY / HTTPS_PROXY environment variables.
- Automatically picks the best available tool: aria2c > wget > curl.
- Resumes interrupted downloads (output file must exist).
- Retries up to 20 times with 10 second intervals.

Examples:
  $0 https://example.com/file.zip ./downloads/file.zip
  HTTP_PROXY=http://proxy:8080 $0 https://example.com/file.zip ./file.zip
EOF
    exit 1
}

# Check arguments.
if [ $# -ne 2 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    usage
fi

URL="$1"
OUTPUT="$2"
RETRY_COUNT=20
RETRY_INTERVAL=10

# Create output directory if it doesn't exist.
OUTPUT_DIR=$(dirname "$OUTPUT")
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR" || { echo "Error: Cannot create output directory '$OUTPUT_DIR'"; exit 1; }
fi

# Detect available download tool.
DOWNLOADER=""
if command -v aria2c >/dev/null 2>&1; then
    DOWNLOADER="aria2c"
elif command -v wget >/dev/null 2>&1; then
    DOWNLOADER="wget"
elif command -v curl >/dev/null 2>&1; then
    DOWNLOADER="curl"
else
    echo "Error: No download tool found (aria2c, wget, or curl). Please install one."
    exit 1
fi

echo "Using downloader: $DOWNLOADER"

# Perform the download using the selected tool.
download() {
    case "$DOWNLOADER" in
        aria2c)
            # aria2c: resume enabled, follow redirects, use output path.
            aria2c --continue=true -o "$OUTPUT" "$URL"
            ;;
        wget)
            # wget: resume, output to file, follow redirects.
            wget -c -O "$OUTPUT" "$URL"
            ;;
        curl)
            # curl: resume, follow redirects, output to file.
            curl -L -C - -o "$OUTPUT" "$URL"
            ;;
    esac
}

# Retry loop.
for (( i=1; i<=RETRY_COUNT; i++ )); do
    echo "Attempt $i of $RETRY_COUNT: Downloading $URL to $OUTPUT"
    if download; then
        echo "Download succeeded."
        exit 0
    else
        echo "Download failed (attempt $i)."
        if [ $i -lt $RETRY_COUNT ]; then
            echo "Waiting $RETRY_INTERVAL seconds before retry ..."
            sleep $RETRY_INTERVAL
        fi
    fi
done

echo "Error: All $RETRY_COUNT retries exhausted. Download failed."
exit 1
