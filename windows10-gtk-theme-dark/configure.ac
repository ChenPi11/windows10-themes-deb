dnl Copyright (C) 2026 ChenPi11
dnl This file is free software: you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published
dnl by the Free Software Foundation, either version 3 of the License,
dnl or (at your option) any later version.
dnl
dnl This file is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program.  If not, see <https://www.gnu.org/licenses/>.
AC_PREREQ([2.72])
AC_INIT([windows10-gtk-theme-dark], [3.2.1], [wushengwuxi-msctinoulk@outlook.com])
AC_CONFIG_AUX_DIR([build-aux])

# Checks for programs.
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PROG_MAKE_SET

AC_PATH_PROG([DPKG_DEB], [dpkg-deb], [dpkg-deb], [])
AS_IF([test "x$DPKG_DEB" = "x"],
      [AC_MSG_ERROR([dpkg-deb is required but not found.])])
AC_SUBST([DPKG_DEB])

AC_PATH_PROG([LINTIAN], [lintian], [lintian], [])
AS_IF([test "x$LINTIAN" = "x"],
	  [LINTIAN=false])
AC_SUBST([LINTIAN])

AC_PATH_PROG([SHA256SUM], [sha256sum], [sha256sum], [])
AS_IF([test "x$SHA256SUM" = "x"],
	  [AC_MSG_ERROR([sha256sum is required but not found.])])

AC_PATH_PROG([MD5SUM], [md5sum], [md5sum], [])
AS_IF([test "x$MD5SUM" = "x"],
          [AC_MSG_ERROR([md5sum is required but not found.])])

AC_PATH_PROG([TAR], [tar], [tar], [])
AS_IF([test "x$TAR" = "x"],
	  [AC_MSG_ERROR([tar is required but not found.])])

AC_PATH_PROG([RM], [rm], [rm], [])
AS_IF([test "x$RM" = "x"],
          [AC_MSG_ERROR([rm is required but not found.])])

AC_PATH_PROG([TEST], [test], [test], [])
AS_IF([test "x$TEST" = "x"],
          [AC_MSG_ERROR([test is required but not found.])])

AC_PATH_PROG([ECHO], [echo], [echo], [])
AS_IF([test "x$ECHO" = "x"],
          [AC_MSG_ERROR([echo is required but not found.])])

AC_PATH_PROG([MV], [mv], [mv], [])
AS_IF([test "x$MV" = "x"],
          [AC_MSG_ERROR([mv is required but not found.])])

AC_PATH_PROG([FIND], [find], [find], [])
AS_IF([test "x$FIND" = "x"],
          [AC_MSG_ERROR([find is required but not found.])])

AC_PATH_PROG([CHMOD], [chmod], [chmod], [])
AS_IF([test "x$CHMOD" = "x"],
          [AC_MSG_ERROR([chmod is required but not found.])])

AC_PATH_PROG([CP], [cp], [cp], [])
AS_IF([test "x$CP" = "x"],
          [AC_MSG_ERROR([cp is required but not found.])])

AC_PATH_PROG([SED], [sed], [sed], [])
AS_IF([test "x$SED" = "x"],
          [AC_MSG_ERROR([sed is required but not found.])])

AC_PATH_PROG([GZIP], [gzip], [gzip], [])
AS_IF([test "x$GZIP" = "x"],
          [AC_MSG_ERROR([gzip is required but not found.])])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([control.in])
AC_OUTPUT
