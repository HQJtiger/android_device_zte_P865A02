#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/zte/P865A02

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.kona

# Prebuilt files for recovery ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/recovery,$(TARGET_COPY_OUT_RECOVERY)/root)

# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := P865A02,A2020SP,ZTE_A2020_SP
