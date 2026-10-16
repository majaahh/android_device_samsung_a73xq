#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a73xq/a73xq-vendor.mk)

# Audio - Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Branding
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Display - Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_4630947232161729154.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947232161729154.xml

# Fingerprint
$(call soong_config_set,samsungUdfpsVars,udfps_zorder,0x20000000u)
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/samsung/fingerprint:libudfps_extension.samsung)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Init
PRODUCT_PACKAGES += \
    init.a73xq.rc \
    wifi_firmware.rc

# Media
TARGET_SUPPORTS_OMX_SERVICE := false

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Sensors
PRODUCT_PACKAGES += \
    sensors.a73xq

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
