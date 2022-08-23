# Inherit mini common pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
