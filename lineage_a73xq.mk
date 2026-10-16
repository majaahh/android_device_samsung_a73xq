#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the device
$(call inherit-product, device/samsung/a73xq/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifiers
PRODUCT_NAME := lineage_a73xq
PRODUCT_DEVICE := a73xq
PRODUCT_MODEL := SM-A736B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a73xqxx/a73xq:11/RP1A.200720.012/A736BXXUAEXK4:user/release-keys" \
    BuildDesc="a73xqxx-user 11 RP1A.200720.012 A736BXXUAEXK4 release-keys"
