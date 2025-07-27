#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#


DEVICE_PATH := device/xiaomi/ishtar

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/ishtar/BoardConfigVendor.mk
