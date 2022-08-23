# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ro.pixelstar.ziptype=GAPPS

# pixelstarOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelstar.display.version=$(pixelstar_DISPLAY_VERSION) \
    ro.pixelstar.build.version=$(pixelstar_BUILD_VERSION) \
    ro.pixelstar.build.date=$(BUILD_DATE) \
    ro.pixelstar.buildtype=$(pixelstar_BUILD_TYPE) \
    ro.pixelstar.fingerprint=$(ROM_FINGERPRINT) \
    ro.pixelstar.version=$(pixelstar_VERSION) \
    ro.pixelstar.base.version=$(pixelstar_NUM_VER) \
    ro.modversion=$(pixelstar_VERSION)
