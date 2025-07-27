#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlayIshtar \
    SettingsOverlayIshtar \
    SettingsProviderResIshtar \
    SystemUIOverlayIshtar

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/overlay/config-odm.xml:$(TARGET_COPY_OUT_ODM)/overlay/config/config.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/ishtar/ishtar-vendor.mk)
