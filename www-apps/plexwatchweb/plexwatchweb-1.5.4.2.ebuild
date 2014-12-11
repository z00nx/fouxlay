# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils webapp depend.php

DESCRIPTION="A web front-end for plexWatch"
HOMEPAGE="https://github.com/ecleese/plexWatchWeb"
SRC_URI="https://github.com/ecleese/plexWatchWeb/archive/v${PV}.tar.gz -> ${PF}.tar.gz"
# LICENSE="AGPL-3"

KEYWORDS="~amd64 ~arm ~x86"

DEPEND=""
RDEPEND="dev-lang/php[curl,json,sqlite]"
need_php_httpd

S=${WORKDIR}/${PN}

pkg_setup() {
	webapp_pkg_setup
}

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
		mv plexWatchWeb-$PV $S
	fi
}

src_prepare() {
	epatch_user
}

src_install() {
	webapp_src_preinst

	insinto "${MY_HTDOCSDIR}"
	doins -r .

	webapp_serverowned -R "${MY_HTDOCSDIR}"/config

	webapp_src_install
}
