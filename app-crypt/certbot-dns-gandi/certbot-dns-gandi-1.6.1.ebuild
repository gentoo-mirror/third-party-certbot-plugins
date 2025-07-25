# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{11..13} )

MY_PN="certbot-plugin-gandi"

inherit distutils-r1

DESCRIPTION="Gandi LiveDNS Authenticator plugin for Certbot"
HOMEPAGE="https://pypi.org/project/certbot-plugin-gandi/ https://github.com/obynio/certbot-plugin-gandi"
SRC_URI="https://github.com/obynio/${MY_PN}/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# No tests available
RESTRICT="test"

RDEPEND="
	>=app-crypt/certbot-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.3[${PYTHON_USEDEP}]
"
