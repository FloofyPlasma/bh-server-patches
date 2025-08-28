TARGET := macosx:clang:latest
INSTALL_TARGET_PROCESSES = com.majicjungle.BlockheadsServer
ARCHS = x86_64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BadPacketCrashPatch

BadPacketCrashPatch_FILES = Tweak.xm
BadPacketCrashPatch_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
