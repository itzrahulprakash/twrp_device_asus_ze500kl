# Release name
PRODUCT_RELEASE_NAME := ze500kl

# Inherit device configuration
$(call inherit-product, device/asus/ze500kl/omni_ze500kl.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ze500kl
PRODUCT_NAME := cm_ze500kl
PRODUCT_BRAND := asus
PRODUCT_MODEL := ze500kl
PRODUCT_MANUFACTURER := asus

DEVICE_PACKAGE_OVERLAYS += device/asus/ze500kl/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/asus/ze500kl/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel