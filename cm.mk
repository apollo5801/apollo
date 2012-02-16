# Release name
PRODUCT_RELEASE_NAME := ICSFORG3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/apollo/full_apollo.mk)

PRODUCT_PACKAGE_OVERLAYS := device/samsung/apollo/overlay

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := apollo
PRODUCT_NAME := cm_apollo
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := apollo
PRODUCT_MANUFACTURER := Samsung
