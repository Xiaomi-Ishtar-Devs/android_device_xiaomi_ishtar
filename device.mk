#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/audio/resourcemanager_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml
    
# Fingerprint
TARGET_HAS_UDFPS := true

# IFAAService
PRODUCT_PACKAGES += \
    IFAAService

# MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

# NFC
TARGET_USES_ST_NFC := true

# Overlay
PRODUCT_PACKAGES += \
    ApertureOverlayIshtar \
    FrameworkResOverlayIshtar \
    SettingsOverlayIshtar \
    SettingsProviderResIshtar \
    SystemUIOverlayIshtar \
    WifiResIshtar

# PowerShare
$(call soong_config_set,lineage_powershare,powershare_path,/sys/class/qcom-battery/reverse_chg_mode)
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/ishtar/ishtar-vendor.mk)
