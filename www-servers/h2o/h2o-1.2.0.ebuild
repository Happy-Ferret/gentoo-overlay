# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit cmake-utils

DESCRIPTION="H2O - an optimized HTTP server with support for HTTP/1.x and HTTP/2"
HOMEPAGE="https://github.com/h2o/h2o"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="nomirror"

LICENSE="MIT"
KEYWORDS="~amd64"
SLOT="0"

DEPEND="dev-libs/openssl dev-libs/libyaml"
RDEPEND="${DEPEND}"

IUSE=""

src_install() {
    cmake-utils_src_install
    dodoc examples/h2o/h2o.conf
}
