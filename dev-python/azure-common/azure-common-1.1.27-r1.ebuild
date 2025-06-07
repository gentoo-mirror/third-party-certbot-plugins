# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="Microsoft Azure Client Library for Python (Common)"
HOMEPAGE="https://pypi.org/project/azure-common"
SRC_URI=$(pypi_sdist_url --no-normalize "${PN}" "${PV}" .zip)

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="app-arch/unzip"
