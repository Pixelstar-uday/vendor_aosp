# Set pixelstar specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)
