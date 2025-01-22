#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.ishtar.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.ishtar.rc \

# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlayIshtar \
    SettingsOverlayIshtar \
    SettingsProviderResIshtar \
    SystemUIOverlayIshtar

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/overlay/config-odm.xml:$(TARGET_COPY_OUT_ODM)/overlay/config/config.xml

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi.v2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hals.conf:$(TARGET_COPY_OUT_ODM)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/ishtar/ishtar-vendor.mk)
