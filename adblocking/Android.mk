LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := hosts
LOCAL_MODULE_TAG := optional
LOCAL_MODULE_CLASS := ETC

# This will install the file in /system/etc
#
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)
LOCAL_SRC_FILES := $(LOCAL_MODULE)

LOCAL_ROOT := $(LOCAL_PATH)
LOCAL_TARGET := $(LOCAL_ROOT)/$(LOCAL_SRC_FILES)

.PHONY: $(LOCAL_TARGET)
$(LOCAL_TARGET):
	cd $(LOCAL_ROOT) && python get_hosts.py

include $(BUILD_PREBUILT)

