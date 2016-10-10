include $(call all-subdir-makefiles)

# Allows for skipping of PRODUCT_COPY_FILES. This system is added by CM only.
# /system/etc/hosts is defined in build/ and I don't want to have to patch that.
PRODUCT_COPY_FILES_OVERRIDES += \
	system/etc/hosts

PRODUCT_PACKAGES += \
	hosts \
	FDroidPrivilegedExtension \
	F-Droid
