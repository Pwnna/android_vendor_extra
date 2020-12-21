include $(call all-subdir-makefiles)

PRODUCT_PACKAGES += \
  FDroid \
  FDroidPrivilegedExtension

# PRODUCT_PACKAGE_OVERLAYS := vendor/extra/overlay/microg

# PRODUCT_PACKAGES += \
# FDroid \
# FDroidPrivilegedExtension
# GmsCore \
# GsfProxy \
# FakeStore \
# MozillaNlpBackend \
# NominatimNlpBackend \
# com.google.android.maps.jar \
# YahooWeatherProvider \
# YalpStore

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/extra/keys/releasekey
PRODUCT_OTA_PUBLIC_KEYS := vendor/extra/keys/releasekey
