# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="ownCloud CLI client written in python"
HOMEPAGE="https://github.com/csawyerYumaed/pyOwnCloud"
SRC_URI="https://github.com/csawyerYumaed/pyOwnCloud/archive/v$PV.tar.gz"

SLOT="0"
KEYWORDS="~amd64"

PYTHON_DEPEND="2:2.7"

RDEPEND="<net-misc/ocsync-0.91.0"

DEPEND="$RDEPEND"

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
		mv pyOwnCloud-$PV $S
	fi
}

