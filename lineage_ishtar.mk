#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ishtar device
$(call inherit-product, device/xiaomi/ishtar/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ishtar
PRODUCT_DEVICE := ishtar
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2304FPN6DC

# AviumUI Configs
AVIUM_MAINTAINER := WilliamSado
AVIUM_SETTINGS_SOC_MODEL_NAME := Qualcomm Snapdragon 8 Gen 2
AVIUM_SETTINGS_DEVICE_CODENAME := Xiaomi 13 Ultra
AVIUM_IS_OFFICIAL := false
WITH_GMS := true
AVIUM_FORCE_SET_FAKE_PROP := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/ishtar/ishtar:16/BP2A.250605.031/OS3.0.4.0.WMACNXM:user/release-keys
