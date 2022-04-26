
##############################################################
#
# server_socket
#
##############################################################

#TODO: Fill up the contents below in order to reference my camera app
SERVER_SOCKET_VERSION = '2233d3963383f2b258f63515c13cf481c154b87b'
SERVER_SOCKET_SITE = 'git@github.com:cu-ecen-aeld/final-project-Amey2904dash.git'
SERVER_SOCKET_SITE_METHOD = git


define SERVER_SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sample_socket/socket_server/ all
endef

#TODO: Add required executables or scripts below
define SERVER_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/sample_socket/socket_server/socket_server $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
