ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Preferences

TWEAK_NAME = ForgetYourUpdate
$(TWEAK_NAME)_FILES = ForgetYourUpdate.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

c:
	find . -name ".DS_Store" -delete
	rm -rfv .theos/
#Clean up using 'make c'
