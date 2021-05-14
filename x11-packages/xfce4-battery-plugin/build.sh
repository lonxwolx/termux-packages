TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-battery-plugin/start
TERMUX_PKG_DESCRIPTION="A battery monitor panel plugin for Xfce4"
TERMUX_PKG_LICENSE="GPL-2.0"
_MAJOR_VERSION=1.1
TERMUX_PKG_VERSION=$_MAJOR_VERSION.4
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-battery-plugin/$_MAJOR_VERSION/xfce4-battery-plugin-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=107df2a837156c010e1eab5430bab90c77f0a3dc699b5937678c8a9c5e64c222
TERMUX_PKG_DEPENDS="gtk3, libxfce4util, libxfce4ui, xfce4-panel"
TERMUX_PKG_BUILD_DEPENDS="intltool, libandroid-glob"
