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
AC_INIT([windows10-themes-deb], [1.0], [wushengwuxi-msctinoulk@outlook.com])
AC_CONFIG_AUX_DIR([build-aux])

# Checks for programs.
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

AC_PATH_PROG([CP], [cp], [cp], [])
AS_IF([test "x$CP" = "x"],
      [AC_MSG_ERROR([cp is required but not found.])])
AC_SUBST([CP])

AC_PATH_PROG([RM], [rm], [rm], [])
AS_IF([test "x$RM" = "x"],
      [AC_MSG_ERROR([rm is required but not found.])])
AC_SUBST([RM])

AC_ARG_WITH([data-dir-prefix],
            [AS_HELP_STRING([--with-data-dir-prefix=PREFIX],
                            [The prefix for data directory installation [/usr/share]])],
            [data_dir_prefix="$withval"],
            [data_dir_prefix="/usr/share"])
AC_SUBST([DATA_DIR_PREFIX], [$data_dir_prefix])

AC_CONFIG_SUBDIRS([windows10-gtk-theme
                   windows10-gtk-theme-dark
                   windows10-icon-theme])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
