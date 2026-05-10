# windows10-themes-deb

Build deb package for Windows 10 icons/GTK theme.

## Requirements

```shell
sudo apt update
sudo apt install dpkg-dev autoconf make sed
```

## Build

```shell
make -f Makefile.devel
./configure
make -j$(nproc)
```

## Install

```shell
cd dist
sudo apt install $(find -type f)
```
