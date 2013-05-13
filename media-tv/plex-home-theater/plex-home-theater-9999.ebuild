# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils python-single-r1 multiprocessing autotools git-2

PYTHON_DEPEND="2:2.4"

EGIT_REPO_URI="git:://github.com/plexinc/plex-home-theater-public/"
DESCRIPTION="Experience your media on a visually stunning, easy to use interface on your computer or Home Theater PC. Your media has never looked this good!"
HOMEPAGE="http://www.plexapp.com/"
LICENSE="GPL-2"
SLOT="0"

pkg_setup {
	python_set_active_version 2
    python_pkg_setup
}
