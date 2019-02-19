LOCAL_MODULE_FILENAME := $(LOCAL_MODULE)
LOCAL_CFLAGS    := -include xorg-server.h $(LOCAL_CFLAGS)
LOCAL_CXXFLAGS := -fexceptions $(LOCAL_CXXFLAGS)
LOCAL_C_INCLUDES := $(XSERVER_INCLUDES) $(LOCAL_C_INCLUDES)
LOCAL_SHARED_LIBRARIES := libXFree86 $(LOCAL_SHARED_LIBRARIES)
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/xserver/lib/xorg/modules
include $(BUILD_SHARED_LIBRARY)
