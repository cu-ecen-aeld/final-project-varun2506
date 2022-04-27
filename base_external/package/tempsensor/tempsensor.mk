##############################################################
#
# TEMPSENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
TEMPSENSOR_VERSION = dd96b14d0416c04eab0cafc16ff5449535f3e717
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEMPSENSOR_SITE = git@github.com:cu-ecen-aeld/final-project-Amey2904dash.git
TEMPSENSOR_SITE_METHOD = git
TEMPSENSOR_GIT_SUBMODULES = YES

define TEMPSENSOR_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp102/ all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define TEMPSENSOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/tmp102/i2ctemp $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
