# Inherit common pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common.mk)

# Inherit pixelstar atv device tree
$(call inherit-product, device/pixelstar/atv/pixelstar_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# pixelstar packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/pixelstar/overlay/tv
