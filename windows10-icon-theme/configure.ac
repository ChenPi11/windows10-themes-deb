AC_PREREQ([2.72])
AC_INIT([windows10-icon-theme], [1.0], [wushengwuxi-msctinoulk@outlook.com])
AC_CONFIG_AUX_DIR([build-aux])

# Checks for programs.
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PROG_MAKE_SET

AC_PATH_PROG([DPKG_DEB], [dpkg-deb], [dpkg-deb], [])
AS_IF([test "x$DPKG_DEB" = "x"], 
      [AC_MSG_ERROR([dpkg-deb is required but not found.])])
AC_SUBST([DPKG_DEB])

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
# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([control.in])
AC_OUTPUT
