# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..10} )

inherit distutils-r1

MY_P="${P/_/}"

DESCRIPTION="Microsoft Azure DNS Management Client Library for Python"
HOMEPAGE="https://pypi.org/project/azure-mgmt-dns"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.zip"

KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SLOT="0"

RDEPEND=">=dev-python/msrestazure-0.6.4[${PYTHON_USEDEP}]
	>=dev-python/azure-common-1.1.27[${PYTHON_USEDEP}]
	>=dev-python/azure-mgmt-core-1.2.0[${PYTHON_USEDEP}]"

BDEPEND="app-arch/unzip"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

RESTRICT="test"
# There is no specific release of
# https://github.com/Azure/azure-sdk-for-python/tree/main/tools/azure-sdk-tools/devtools_testutils

#distutils_enable_tests pytest
