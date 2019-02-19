X4DROID_DATADIR ?= /system/etc/xserver
XSERVER_CFLAGS := -DX4DROID_DATADIR=\"$(X4DROID_DATADIR)\" -std=gnu99

BUILD_XORG_MODULE := external/xorg-server/build_xorg_module.mk

XSERVER_INCLUDES :=									\
	external/xorgproto/include						\
    external/xorg-server/include 					\
    external/xorg-server/dri3 						\
    external/xorg-server/fb 						\
    external/xorg-server/mi 						\
    external/xorg-server/Xext 						\
    external/xorg-server/Xi 						\
    external/xorg-server/composite 					\
    external/xorg-server/randr	 					\
    external/xorg-server/render	 					\
    external/xorg-server/damageext 					\
    external/xorg-server/os		 					\
    external/xorg-server/present	 				\
    external/xorg-server/hw/xfree86/dixmods/extmod	\
    external/xorg-server/miext/cw					\
    external/xorg-server/miext/damage				\
    external/xorg-server/miext/shadow				\
    external/xorg-server/miext/sync					\
    external/xorg-server/hw/xfree86/common			\
    external/xorg-server/hw/xfree86/ddc				\
    external/xorg-server/hw/xfree86/i2c				\
    external/xorg-server/hw/xfree86/loader			\
    external/xorg-server/hw/xfree86/modes			\
    external/xorg-server/hw/xfree86/os-support		\
    external/xorg-server/hw/xfree86/os-support/bus	\
    external/xorg-server/hw/xfree86/parser			\
    external/xorg-server/hw/xfree86/ramdac			\
    external/xorg-server/xfixes						\
													\
	external/pixman-full/pixman						\
	external/libpciaccess/include					\
