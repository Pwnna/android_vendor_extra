include $(call all-subdir-makefiles)

# Extra packages
PRODUCT_PACKAGES += F-Droid

# Override default settings
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay


# PRODUCT_PROPERTY_OVERRIDES += \
#   persist.sys.root_access=0

