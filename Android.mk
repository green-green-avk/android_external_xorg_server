LOCAL_PATH := $(call my-dir)
XSERVER_PATH := $(LOCAL_PATH)

include $(LOCAL_PATH)/modules.mk

XSERVER_INCLUDES += \
	external/xorgproto/include				\
	external/pixman/pixman					\
	external/libpciaccess/include			\
	external/libXfont2/include				\
	external/libxkbfile/include				\
	external/xtrans							\
	external/libXau/include					\
	external/libXdmcp/include				\
	external/openssl/include				\
	external/libxshmfence					\

LOCAL_PATH := $(XSERVER_PATH)

#include $(XSERVER_PATH)/android/Android.mk
include $(XSERVER_PATH)/fb/Android.mk
include $(XSERVER_PATH)/mi/Android.mk
include $(XSERVER_PATH)/render/Android.mk
include $(XSERVER_PATH)/os/Android.mk
include $(XSERVER_PATH)/Xext/Android.mk
include $(XSERVER_PATH)/Xi/Android.mk
include $(XSERVER_PATH)/xkb/Android.mk
include $(XSERVER_PATH)/record/Android.mk
include $(XSERVER_PATH)/dbe/Android.mk
include $(XSERVER_PATH)/xfixes/Android.mk
include $(XSERVER_PATH)/randr/Android.mk
include $(XSERVER_PATH)/composite/Android.mk
include $(XSERVER_PATH)/damageext/Android.mk
include $(XSERVER_PATH)/miext/Android.mk
include $(XSERVER_PATH)/hw/Android.mk
include $(XSERVER_PATH)/config/Android.mk
include $(XSERVER_PATH)/present/Android.mk
include $(XSERVER_PATH)/dix/Android.mk
