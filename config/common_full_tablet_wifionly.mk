$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include pixelstar LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pixelstar/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstar/overlay/dictionaries
