CPPTEST_VERSION:= c1fdebb
CPPTEST_SITE:= http://github.com/jmare/cpptest 
CPPTEST_INSTALL_TARGET:=YES

define CPPTEST_BUILD_CMDS
        $(MAKE) CC="$(TARGET_CC)"  LD="$(TARGET_LD)" -C $(@D) all 
endef

define CPPTEST_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/cpptest $(TARGET_DIR)/bin
endef

define CPPTEST_PERMISSIONS
       /bin/cpptest f 4755 0 0 - - - - - 
endef

$(eval $(generic-package))
