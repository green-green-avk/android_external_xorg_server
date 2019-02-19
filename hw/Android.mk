LOCAL_PATH := $(call my-dir)

ifeq (local,$(NDK_APPS))
    XORG_NDK_BUILD:=true
else
    XORG_NDK_BUILD:=false
endif

XServerLibs := \
    libXServer-dbe 				\
    libXServer-xkb 				\
    libXServer-fb 				\
    libXServer-config			\
    libXServer-Xi 				\
    libXServer-randr 			\
    libXServer-dix 				\
    libXServer-xfixes 			\
    libXServer-render 			\
    libXServer-os 				\
    libXServer-mi 				\
    libXServer-composite 		\
    libXServer-damageext 		\
    libXServer-Xext 			\
    libXServer-miext 			\
    libXServer-present			\
    libXServer-record 			\

include $(CLEAR_VARS)

LOCAL_MODULE    := libXFree86
LOCAL_C_INCLUDES := $(XSERVER_INCLUDES)
LOCAL_CFLAGS    := \
    -DHAVE_DIX_CONFIG_H \
    -DHAVE_XORG_CONFIG_H \
    -DXSERVER_LIBPCIACCESS \
    -DDATADIR=\"$(X4DROID_DATADIR)/usr/share/\" \
    $(XSERVER_CFLAGS)
    
LOCAL_SRC_FILES := 	\
    xfree86/sdksyms.c \
    xfree86/common/xf86AutoConfig.c    \
    xfree86/common/xf86Bus.c    \
    xfree86/common/xf86cmap.c    \
    xfree86/common/xf86Config.c    \
    xfree86/common/xf86Configure.c    \
    xfree86/common/xf86Cursor.c    \
    xfree86/common/xf86DGA.c    \
    xfree86/common/xf86DPMS.c    \
    xfree86/common/xf86Events.c    \
    xfree86/common/xf86Extensions.c \
    xfree86/common/xf86fbBus.c    \
    xfree86/common/xf86fbman.c    \
    xfree86/common/xf86Globals.c    \
    xfree86/common/xf86Helper.c    \
    xfree86/common/xf86Init.c    \
    xfree86/common/xf86DefModeSet.c \
    xfree86/common/xf86Mode.c    \
    xfree86/common/xf86noBus.c    \
    xfree86/common/xf86Option.c    \
    xfree86/common/xf86pciBus.c    \
    xfree86/common/xf86PM.c    \
    xfree86/common/xf86RandR.c    \
    xfree86/common/xf86VidMode.c    \
    xfree86/common/xf86Xinput.c    \
    xfree86/common/xf86xv.c    \
    xfree86/common/xf86xvmc.c    \
    xfree86/common/xf86VGAarbiter.c \
    xfree86/common/xisb.c    \
    xfree86/common/xorgHelper.c    \
    xfree86/ddc/ddc.c \
    xfree86/ddc/ddcProperty.c \
    xfree86/ddc/interpret_edid.c \
    xfree86/ddc/print_edid.c \
    xfree86/i2c/xf86i2c.c  \
    xfree86/modes/xf86Cursors.c  \
    xfree86/modes/xf86Crtc.c  \
    xfree86/modes/xf86cvt.c  \
    xfree86/modes/xf86DiDGA.c \
    xfree86/modes/xf86gtf.c  \
    xfree86/modes/xf86EdidModes.c \
    xfree86/modes/xf86Modes.c \
    xfree86/modes/xf86RandR12.c \
    xfree86/modes/xf86Rotate.c \
    xfree86/os-support/bus/Pci.c  \
    xfree86/os-support/misc/SlowBcopy.c \
    xfree86/os-support/shared/VTsw_noop.c	\
    xfree86/os-support/shared/sigiostubs.c 	\
    xfree86/os-support/shared/ioperm_noop.c	\
    xfree86/os-support/shared/agp_noop.c    \
    xfree86/os-support/shared/posix_tty.c	\
    xfree86/os-support/shared/kmod_noop.c   \
    xfree86/os-support/stub/stub_bell.c		\
    xfree86/os-support/stub/stub_init.c		\
    xfree86/loader/loader.c					\
    xfree86/loader/loadmod.c				\
    xfree86/parser/Device.c    \
    xfree86/parser/DRI.c    \
    xfree86/parser/Extensions.c    \
    xfree86/parser/Files.c    \
    xfree86/parser/Flags.c    \
    xfree86/parser/Input.c    \
    xfree86/parser/InputClass.c    \
    xfree86/parser/Layout.c    \
    xfree86/parser/Module.c    \
    xfree86/parser/Monitor.c    \
    xfree86/parser/OutputClass.c \
    xfree86/parser/Pointer.c    \
    xfree86/parser/read.c    \
    xfree86/parser/scan.c    \
    xfree86/parser/Screen.c    \
    xfree86/parser/Vendor.c    \
    xfree86/parser/Video.c    \
    xfree86/parser/write.c    \
    xfree86/ramdac/xf86CursorRD.c  \
    xfree86/ramdac/xf86HWCurs.c  \
    xfree86/ramdac/BT.c  \
    xfree86/ramdac/IBM.c  \
    xfree86/ramdac/TI.c  \
    xfree86/ramdac/xf86RamDac.c  \
    xfree86/ramdac/xf86RamDacCmap.c


   #libXServer-android
   #libcrypto_static
LOCAL_STATIC_LIBRARIES :=		\
    $(XServerLibs)				\
    libXau						\
    libXdmcp					\
    libXfont					\
    libxshmfence				\
    libpciaccess

LOCAL_SHARED_LIBRARIES := libpixman_full libcrypto

ifeq ($(XORG_NDK_BUILD),true)
LOCAL_LDFLAGS := -lz -lm -ldl -llog -landroid
endif

ifeq ($(XORG_NDK_BUILD),false)
LOCAL_SHARED_LIBRARIES += libz libm libdl liblog libandroid
endif

LOCAL_LDFLAGS += -fPIC

include $(BUILD_SHARED_LIBRARY)

ifeq (1,0)

include $(CLEAR_VARS)

LOCAL_MODULE    := libKDriveAndroid
LOCAL_C_INCLUDES := $(XSERVER_INCLUDES) $(LOCAL_PATH)/kdrive/src $(LOCAL_PATH)/kdrive/android
LOCAL_CFLAGS    := \
    -DHAVE_CONFIG_H \
    -DHAVE_DIX_CONFIG_H \
    $(XSERVER_CFLAGS)
    
LOCAL_SRC_FILES := 	\
	kdrive/android/fake.c \
	kdrive/android/fakeinit.c \
	kdrive/android/kbd.c \
	kdrive/android/mouse.c \
	\
	kdrive/src/kcmap.c \
	kdrive/src/kdrive.c \
	kdrive/src/kinfo.c \
	kdrive/src/kinput.c \
	kdrive/src/kshadow.c \
	kdrive/src/kxv.c \

LOCAL_STATIC_LIBRARIES := \
    $(XServerLibs)				\

LOCAL_SHARED_LIBRARIES := libpixman_full

ifeq ($(XORG_NDK_BUILD),true)
LOCAL_LDFLAGS := -lz -lm -llog -landroid
endif

ifeq ($(XORG_NDK_BUILD),false)
LOCAL_SHARED_LIBRARIES += libz libm liblog libandroid
endif

include $(BUILD_SHARED_LIBRARY)

endif
