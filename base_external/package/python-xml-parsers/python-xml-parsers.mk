################################################################################
#
# python-xml-parsers
#
################################################################################

PYTHON_XML_PARSERS_VERSION = 0.0.0
PYTHON_XML_PARSERS_SOURCE = pycopy-xml.parsers.expat-$(PYTHON_XML_PARSERS_VERSION).tar.gz
PYTHON_XML_PARSERS_SITE = https://files.pythonhosted.org/packages/7e/36/00fb08a1dcacc16dd171d2a760acfbf172f24010008e6686ba781b93a29c
PYTHON_XML_PARSERS_SETUP_TYPE = distutils
PYTHON_XML_PARSERS_LICENSE = MIT
PYTHON_XML_PARSERS_FILES = LICENSE

$(eval $(python-package))
