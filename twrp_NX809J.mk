# Inherit from AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from device
$(call inherit-product, device/nubia/NX809J/device.mk)

# Device identifiers
PRODUCT_DEVICE := NX809J
PRODUCT_NAME := twrp_NX809J
PRODUCT_BRAND := REDMAGIC
PRODUCT_MODEL := Red Magic 11 Pro
PRODUCT_MANUFACTURER := nubia

# Android 16 APEX dependencies
PRODUCT_APEX_SYSTEM_SERVER_JARS += \
    com.android.crashrecovery:service-crashrecovery
