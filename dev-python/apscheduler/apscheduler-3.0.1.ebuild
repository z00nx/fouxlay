# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 eutils

DESCRIPTION="APScheduler is a light but powerful in-process task scheduler that lets you schedule functions (or any python callables) to be executed at times of your choosing."
HOMEPAGE="http://packages.python.org/APScheduler/"
SRC_URI="mirror://pypi/A/APScheduler/APScheduler-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/APScheduler-${PV}"
