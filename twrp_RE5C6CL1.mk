#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE5C6CL1 device
$(call inherit-product, device/realme/RE5C6CL1/device.mk)

PRODUCT_DEVICE := RE5C6CL1
PRODUCT_NAME := twrp_RE5C6CL1
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3785
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX3785
PRODUCT_SYSTEM_DEVICE := RE5C6CL1

# For Google services (if needed)
PRODUCT_GMS_CLIENTID_BASE := android-realme

# Build fingerprint from your actual device
# Get your actual fingerprint with: getprop ro.build.fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 14 UKQ1.230924.001 1737876556400 release-keys"

BUILD_FINGERPRINT := realme/RMX3785IN/RE5C6CL1:14/UKQ1.230924.001/T.R4T2.1c3c35a-7ad3-7ad4:user/release-keys
