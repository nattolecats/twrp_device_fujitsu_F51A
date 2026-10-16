#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from F51A device
$(call inherit-product, device/fujitsu/F51A/device.mk)

PRODUCT_DEVICE := F51A
PRODUCT_NAME := twrp_F51A
PRODUCT_BRAND := DOCOMO
PRODUCT_MODEL := F-51A
PRODUCT_MANUFACTURER := fujitsu

PRODUCT_GMS_CLIENTID_BASE := android-fujitsu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="F51A-user 12 V71R051A F51A.20230213 release-keys"

BUILD_FINGERPRINT := DOCOMO/F51A/F51A:12/V71R051A/F51A.20230213:user/release-keys
