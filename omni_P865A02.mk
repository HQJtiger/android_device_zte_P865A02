#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-Lmense-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P865A02 device
$(call inherit-product, device/zte/P865A02/device.mk)

PRODUCT_DEVICE := P865A02
PRODUCT_NAME := omni_P865A02
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2020 SP
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="GEN_CN_P865A02-user 10 QKQ1.200415.002 20200529.124934 release-keys"

BUILD_FINGERPRINT := ZTE/GEN_CN_P865A02/P865A02:10/QKQ1.200415.002/20200529.124934:user/release-keys
