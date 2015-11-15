# Release name
PRODUCT_RELEASE_NAME := ze550kl

# Inherit device configuration
$(call inherit-product, device/asus/ze550kl/omni_ze550kl.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ze550kl
PRODUCT_NAME := omni_ze550kl
PRODUCT_BRAND := asus
PRODUCT_MODEL := ze550kl
PRODUCT_MANUFACTURER := asus

#DEVICE_PACKAGE_OVERLAYS += device/asus/ze500kl/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/asus/ze550kl/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
