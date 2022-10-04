# http(s) link to package home page.
TERMUX_PKG_HOMEPAGE=https://github.com/Wind4/vlmcsd
#
# # One-line, short package description.
TERMUX_PKG_DESCRIPTION="KMS Emulator in C"
#
# # License.
TERMUX_PKG_LICENSE="unknown"
#
# # Who cares about package.
# # Specify yourself (Github nick, or name + email) if you wish to maintain the
# # package, fix its bugs, etc. Otherwise specify "@termux".
# # Please note that unofficial repositories are not allowed to reference @termux
# # as their maintainer.
TERMUX_PKG_MAINTAINER="@termux"
#
# # Version.
TERMUX_PKG_VERSION=1113
#
# # URL to archive with source code.
TERMUX_PKG_SRCURL=https://github.com/Wind4/vlmcsd/archive/refs/tags/svn${TERMUX_PKG_VERSION}.tar.gz
#
# # SHA-256 checksum of the source code archive.
TERMUX_PKG_SHA256=62f55c48f5de1249c2348ab6b96dabbe7e38899230954b0c8774efb01d9c42cc

TERMUX_PKG_DEPENDS="libandroid-posix-semaphore"

TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LDFLAGS="$LDFLAGS -landroid-posix-semaphore"
}

termux_step_make_install() {
	cp -r bin etc "$TERMUX_PREFIX"
	for i in 1 5 7 8; do
		install -d "$TERMUX_PREFIX/share/man/man${i}"
		cp man/*.${i} "$TERMUX_PREFIX/share/man/man${i}"
	done
}

termux_step_install_license() {
	install -d "$TERMUX_PREFIX/doc/$TERMUX_PKG_NAME"
	touch "$TERMUX_PREFIX/doc/$TERMUX_PKG_NAME/LICENSE"	
}
