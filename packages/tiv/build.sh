TERMUX_PKG_HOMEPAGE=https://github.com/stefanhaustein/TerminalImageViewer
TERMUX_PKG_DESCRIPTION="Display images in a terminal using block graphic characters."
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.1
TERMUX_PKG_SRCURL=https://github.com/stefanhaustein/TerminalImageViewer/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9a5f5c8688ef8db0e88dfcea6a1ae30da32268a7ab7972ff0de71955a75af0db
TERMUX_PKG_DEPENDS="imagemagick"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	TERMUX_PKG_BUILDDIR=$TERMUX_PKG_BUILDDIR/src/main/cpp
}
