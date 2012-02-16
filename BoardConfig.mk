# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
-include vendor/samsung/apollo/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := s5p6442
TARGET_CPU_ABI := armeabi-v6
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

# Graphics
BOARD_EGL_CFG := device/samsung/apollo/prebuilt/graphics/egl.cfg

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
TARGET_SENSORS_NO_OPEN_CHECK := true
BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
TARGET_BOOTLOADER_BOARD_NAME := s5p6442

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcamera
BOARD_CAMERA_DEVICE := /dev/video0

# Misc
WITH_DEXPREOPT := true
WITH_JIT := true
TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_LIBSECRIL_STUB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"
