# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/wahoo/device-calyx.mk)
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/google_devices/taimen/vendor_overlay/carrier-naked/

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_taimen
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false
