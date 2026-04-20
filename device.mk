LOCAL_PATH := device/nubia/NX809J

# A/B support
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Copy recovery files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Vendor binaries for decryption in recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/vendor/bin/qseecomd:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/qseecomd \
    $(LOCAL_PATH)/recovery/vendor/bin/hw/android.hardware.security.keymint-service-spu-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.security.keymint-service-spu-qti \
    $(LOCAL_PATH)/recovery/vendor/bin/hw/android.hardware.gatekeeper-rust-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.gatekeeper-rust-service-qti \
    $(LOCAL_PATH)/recovery/vendor/bin/hw/android.hardware.health-service.qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.health-service.qti \
    $(LOCAL_PATH)/recovery/vendor/bin/hw/android.hardware.weaver-service-spu-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.weaver-service-spu-qti

# Vendor libraries for decryption in recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libQSEEComAPI.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libdrmfs.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdrmfs.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libminkdescriptor.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libminkdescriptor.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libdmabufheap.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdmabufheap.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libspukeymint.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libspukeymint.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libcrypto.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libcrypto.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libspukeymintutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libspukeymintutils.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libspukeymintdeviceutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libspukeymintdeviceutils.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libspcom.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libspcom.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libqcbor.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqcbor.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libkeymaster_messages.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libkeymaster_messages.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libion.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libion.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libminksocket_vendor.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libminksocket_vendor.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libhardware_legacy.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libhardware_legacy.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libvmmem.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libvmmem.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libqrtr.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqrtr.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libaconfig_storage_read_api_cc.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libaconfig_storage_read_api_cc.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/server_configurable_flags.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/server_configurable_flags.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libpng.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libpng.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libz.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libz.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libhardware.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libhardware.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libhidlbase.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libhidlbase.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libcutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libcutils.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libutils.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libbase.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libbase.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libc++.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libc++.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.security.keymint-V4-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.security.keymint-V4-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.security.rkp-V3-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.security.rkp-V3-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.security.secureclock-V1-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.security.secureclock-V1-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.security.sharedsecret-V2-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.security.sharedsecret-V2-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.weaver-V2-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.weaver-V2-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.hardware.health-V4-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.hardware.health-V4-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/android.system.suspend-V1-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/android.system.suspend-V1-ndk.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libdiag.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdiag.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libxml2.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libxml2.so \
    $(LOCAL_PATH)/recovery/vendor/lib64/libseclog.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libseclog.so

# Touch and display kernel modules for recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/vendor/modules/zte_tpd.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1/zte_tpd.ko \
    $(LOCAL_PATH)/recovery/vendor/modules/panel_event_notifier.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1/panel_event_notifier.ko \
    $(LOCAL_PATH)/recovery/vendor/modules/haptic_86938.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1/haptic_86938.ko \
    $(LOCAL_PATH)/recovery/vendor/modules/ifas.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1/ifas.ko

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 32
