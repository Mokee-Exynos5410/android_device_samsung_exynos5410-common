LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := pvrsrvctl.c
LOCAL_LDFLAGS := -L vendor/samsung/exynos5410-common/proprietary/vendor/lib \
                    vendor/samsung/exynos5410-common/proprietary/vendor/lib/libsrv_init.so \
                    vendor/samsung/exynos5410-common/proprietary/vendor/lib/libsrv_um.so

LOCAL_LDFLAGS := $(LOCAL_PATH)/libsrv_init.so \
                 $(LOCAL_PATH)/libsrv_um.so

LOCAL_MODULE_PATH := $(TARGET_OUT)/bin/
LOCAL_MODULE := pvrsrvctl
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
