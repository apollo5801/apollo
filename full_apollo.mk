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

#
# This file is the build configuration for a full Android
# build for apollo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and apollo, hence its name.
#


PRODUCT_LOCALES += ldpi mdpi

PRODUCT_PACKAGE_OVERLAYS := device/samsung/apollo/overlay
DEVICE_PACKAGE_OVERLAYS := device/samsung/apollo/overlay

PRODUCT_PACKAGES := \
    Camera \
    Gallery \
    gps.s5p6442 \
    sensors.s5p6442 \
    camera.s5p6442 \
    audio.primary.s5p6442 \
    audio_policy.s5p6442 \
    brcm_patchram_plus \
    screencap \
    hwcomposer.default \
    CMWallpapers \
    Pacman \
    Stk \
    FM \
    Superuser \
    FileManager \
    Androidian \
    Cyanbread \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=130 \
    wifi.interface=eth0 \
    ro.telephony.ril_class=SamsungRIL \
    phone.ril.classname = com.android.internal.telephony.SamsungRIL \
    ro.telephony.sends_barcount=1 \
    wifi.supplicant_scan_interval=120 \
    mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2



PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
        device/samsung/apollo/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/samsung/apollo/prebuilt/etc/asound.conf:system/etc/asound.conf \
        device/samsung/apollo/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd.conf \
        device/samsung/apollo/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
        device/samsung/apollo/prebuilt/etc/dbus.conf:system/etc/dbus.conf \
        device/samsung/apollo/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/qt602240_ts_input.kcm.bin:system/usr/keychars/qt602240_ts_input.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
        device/samsung/apollo/prebuilt/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
        device/samsung/apollo/prebuilt/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
        device/samsung/apollo/prebuilt/keylayout/sec_headset.kl:system/usr/keylayout/sec_headset.kl \
        device/samsung/apollo/prebuilt/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc \
        device/samsung/apollo/prebuilt/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
        device/samsung/apollo/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
        device/samsung/apollo/prebuilt/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
        device/samsung/apollo/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
        device/samsung/apollo/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
        device/samsung/apollo/prebuilt/wifi/wifi.conf:system/etc/wifi/wifi.conf \
        device/samsung/apollo/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
      	device/samsung/apollo/prebuilt/camera/libcamera.so:obj/lib/libcamera.so \
    	device/samsung/apollo/prebuilt/camera/libsecjpeg.so:obj/lib/libsecjpeg.so \
    	device/samsung/apollo/prebuilt/ril/libril.so:obj/lib/libril.so \
    	device/samsung/apollo/prebuilt/gps/libsecril-client.so:obj/lib/libsecril-client.so \
    	device/samsung/apollo/prebuilt/bin/su:system/xbin/su \
    	device/samsung/apollo/prebuilt/gps/libsecgps.so:obj/lib/libsecgps.so \
    	device/samsung/apollo/prebuilt/camera/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    	device/samsung/apollo/prebuilt/camera/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    	device/samsung/apollo/prebuilt/camera/libcamera.so:system/lib/libcamera.so \
    	device/samsung/apollo/prebuilt/camera/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \
    	device/samsung/apollo/prebuilt/camera/libActionShot.so:system/lib/libActionShot.so \
    	device/samsung/apollo/prebuilt/camera/libarccamera.so:system/lib/libarccamera.so \
    	device/samsung/apollo/prebuilt/camera/libCaMotion.so:system/lib/libCaMotion.so \
    	device/samsung/apollo/prebuilt/camera/libcaps.so:system/lib/libcaps.so \
    	device/samsung/apollo/prebuilt/camera/libPanoraMax1.so:system/lib/libPanoraMax1.so \
    	device/samsung/apollo/prebuilt/camera/libseccamera.so:system/lib/libseccamera.so \
    	device/samsung/apollo/prebuilt/camera/libPlusMe.so:system/lib/libPlusMe.so \
    	device/samsung/apollo/prebuilt/camera/libsecjpeg.so:system/lib/libsecjpeg.so \
    	device/samsung/apollo/prebuilt/gps/libsecgps.so:system/lib/libsecgps.so \
    	device/samsung/apollo/prebuilt/gps/libsecril-client.so:system/lib/libsecril-client.so \
    	device/samsung/apollo/prebuilt/ril/rild:system/bin/rild \
    	device/samsung/apollo/prebuilt/ril/libril.so:system/lib/libril.so \
    	device/samsung/apollo/prebuilt/ril/libsec-ril.so:system/lib/libsec-ril.so \
    	device/samsung/apollo/prebuilt/sensors/akmd2:system/bin/akmd2 \
    	device/samsung/apollo/prebuilt/sensors/sensors.default.so:system/lib/hw/sensors.default.so \
    	device/samsung/apollo/prebuilt/graphics/libChunkAlloc.so:system/lib/libChunkAlloc.so \
    	device/samsung/apollo/prebuilt/graphics/librender.so:system/lib/librender.so \
        device/samsung/apollo/prebuilt/graphics/gralloc.s5p6442.so:system/lib/hw/gralloc.s5p6442.so \
        device/samsung/apollo/prebuilt/graphics/libEGL_fimg.so:system/lib/egl/libEGL_fimg.so \
        device/samsung/apollo/prebuilt/graphics/libGLESv1_CM_fimg.so:system/lib/egl/libGLESv1_CM_fimg.so \
        device/samsung/apollo/prebuilt/graphics/libGLESv2_fimg.so:system/lib/egl/libGLESv2_fimg.so \
        device/samsung/apollo/prebuilt/graphics/libGLES_fimg.so:system/lib/egl/libGLES_fimg.so \
    	device/samsung/apollo/prebuilt/sensors/lights.s5p6442.so:system/lib/hw/lights.s5p6442.so \
    	device/samsung/apollo/prebuilt/bluetooth/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    	device/samsung/apollo/prebuilt/bin/charging_mode:system/bin/charging_mode \
    	device/samsung/apollo/prebuilt/bin/playlpm:system/bin/playlpm \
    	device/samsung/apollo/prebuilt/bin/immvibed:system/bin/immvibed \
    	device/samsung/apollo/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    	frameworks/base/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    	frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, device/samsung/apollo/device.mk)


# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_apollo
PRODUCT_DEVICE := apollo
PRODUCT_BRAND := Android
PRODUCT_MODEL := apollo
