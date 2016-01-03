$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_RELEASE_NAME := SM-T530
PRODUCT_NAME := aosp_matissewifi

PRODUCT_GMS_CLIENTID_BASE := android-samsung
