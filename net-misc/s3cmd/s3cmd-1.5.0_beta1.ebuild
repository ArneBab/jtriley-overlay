# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/s3cmd/s3cmd-1.0.1.ebuild,v 1.1 2012/02/02 10:55:31 titanofold Exp $

EAPI="3"
PYTHON_DEPEND="2"
PYTHON_USE_WITH="xml"

inherit distutils

MY_P=${P/_beta/-beta}

KEYWORDS="~amd64 ~x86"
DESCRIPTION="Command line client for Amazon S3"
HOMEPAGE="http://s3tools.org/s3cmd"
SRC_URI="mirror://sourceforge/s3tools/${MY_P}.tar.gz"
LICENSE="GPL-2"

IUSE=""
SLOT="0"

DEPEND=""
RDEPEND=""

S="${WORKDIR}/${MY_P}"

PYTHON_MODNAME="S3"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	S3CMD_INSTPATH_DOC=/usr/share/doc/${PF} distutils_src_install
	rm -rf "${D}"/usr/share/doc/${PF}/${PN}
}