#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S4W device
$(call inherit-product, device/tianyu/S4W/device.mk)

PRODUCT_DEVICE := S4W
PRODUCT_NAME := omni_S4W
PRODUCT_BRAND := TIANYU
PRODUCT_MODEL := S4W
PRODUCT_MANUFACTURER := tianyu

PRODUCT_GMS_CLIENTID_BASE := android-tianyu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S4W-user 11 S4W mp1V8421 test-keys"

BUILD_FINGERPRINT := TIANYU/S4W/S4W:11/S4W/042409:user/test-keys
