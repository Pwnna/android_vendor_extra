PRODUCT_PACKAGE_OVERLAYS := vendor/extra/overlay/microg

PRODUCT_PACKAGES += \
GmsCore \
GsfProxy \
FakeStore \
MozillaNlpBackend \
NominatimNlpBackend \
com.google.android.maps.jar \
FDroid \
FDroidPrivilegedExtension \
# YahooWeatherProvider \
YalpStore

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/extra/keys/releasekey
PRODUCT_OTA_PUBLIC_KEYS := vendor/extra/keys/releasekey
PRODUCT_EXTRA_RECOVERY_KEYS := vendor/extra/keys/releasekey
