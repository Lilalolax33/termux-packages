TERMUX_PKG_HOMEPAGE=https://tox.chat
TERMUX_PKG_DESCRIPTION="Backend library for the Tox protocol"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=0.2.12
TERMUX_PKG_SRCURL=https://github.com/TokTok/toxcore/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=30ae3263c9b68d3bef06f799ba9d7a67e3fad447030625f0ffa4bb22684228b0
TERMUX_PKG_DEPENDS="libsodium"
TERMUX_PKG_BREAKS="c-toxcore-dev"
TERMUX_PKG_REPLACES="c-toxcore-dev"
#TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_INSTALL_PREFIX=${TERMUX_PREFIX}
-DCMAKE_INSTALL_LIBDIR=${TERMUX_PREFIX}/lib
-DBOOTSTRAP_DAEMON=off
-DDHT_BOOTSTRAP=off
-DBUILD_TOXAV=off
-DBUILD_AV_TEST=off
"
