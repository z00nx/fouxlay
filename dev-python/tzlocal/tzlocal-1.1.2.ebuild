# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 eutils

DESCRIPTION="tzinfo object for the local timezone"
HOMEPAGE="https://pypi.python.org/pypi/tzlocal"
SRC_URI="mirror://pypi/t/tzlocal/tzlocal-${PV}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/tzlocal-${PV}"
