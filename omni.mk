# Release name
PRODUCT_RELEASE_NAME := ze500kl

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/ze500kl/device_ze500kl.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ze500kl
PRODUCT_NAME := cm_ze500kl
PRODUCT_BRAND := asus
PRODUCT_MODEL := ze500kl
PRODUCT_MANUFACTURER := asus
