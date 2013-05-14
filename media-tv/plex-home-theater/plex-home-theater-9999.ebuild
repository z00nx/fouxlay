# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils python multiprocessing autotools git-2

PYTHON_DEPEND="2:2.6"

EGIT_REPO_URI="git://github.com/plexinc/plex-home-theater-public/"
DESCRIPTION="Experience your media on a visually stunning, easy to use interface on your computer or Home Theater PC. Your media has never looked this good!"
HOMEPAGE="http://www.plexapp.com/"
LICENSE="GPL-2"
SLOT="0"

RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_unpack() {
	git-2_src_unpack
}

#src_prepare() {
#	"${PORTAGE_BUILDDIR}/bootstrap"
#}

src_configure() {
	"${WORKDIR}/${P}/bootstrap"
	econf
}
