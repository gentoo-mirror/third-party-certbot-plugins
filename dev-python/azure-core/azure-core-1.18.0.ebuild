# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

DESCRIPTION="Microsoft Azure core library for Python"
HOMEPAGE="https://pypi.org/project/azure-core"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

RDEPEND=""

BDEPEND="app-arch/unzip"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

RESTRICT="test"
# There is no specific release of
# https://github.com/Azure/azure-sdk-for-python/tree/main/tools/azure-sdk-tools/devtools_testutils

#distutils_enable_tests pytest
