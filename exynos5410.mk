#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

COMMON_PATH := device/samsung/exynos5410-common

# Gapps
#GAPPS_VARIANT := nano
#GAPPS_FORCE_MATCHING_DPI := true
#WITH_DEXPREOPT := false
#DONT_DEXPREOPT_PREBUILTS := true

# overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-mokee

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Ramdisk
PRODUCT_PACKAGES += \
    init.universal5410.rc \
    init.universal5410.usb.rc \
    init.universal5410.wifi.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.universal5410.rc

# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0

# Advanced display
PRODUCT_PACKAGES += \
    AdvancedDisplay

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(COMMON_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    tinymix \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

# Bluetooth
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(COMMON_PATH)/bluetooth/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.universal5410 \
    libshim_camera \
    libhwjpeg \
    libstlport \
    libxml2

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# FlipFlap
PRODUCT_PACKAGES += \
FlipFlap

# Samsung Doze
#PRODUCT_PACKAGES += \
    SamsungDoze

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# GPU
PRODUCT_PACKAGES += \
    pvrsrvctl \
    libcorkscrew

#GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Graphics
PRODUCT_PACKAGES += \
    hwcomposer.exynos5 \
    libion \
    memtrack.exynos5 \
    libgutils \
    gralloc.exynos5 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.memtrack@1.0-impl

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.universal5410

# Keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    $(COMMON_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Lights
PRODUCT_PACKAGES += \
    lights.universal5410 \
    android.hardware.light@2.0-impl

# Linker
PRODUCT_PACKAGES += \
    libsamsung_symbols

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(COMMON_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore
PRODUCT_PACKAGES += \
    mcDriverDaemon \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bcm2079x.universal5410 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFCEE access control + configuration
NFCEE_ACCESS_PATH := $(COMMON_PATH)/nfc/nfcee_access.xml
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    $(COMMON_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# Network tools
PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# OTA
PRODUCT_PACKAGES += \
    OTAUpdates

# OMX
PRODUCT_PACKAGES += \
    libExynosOMX_Core \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.VP8.Decoder \
    libOMX.Exynos.WMV.Decoder \
    libstagefrighthw \
    libOMX.Exynos.MPEG2.Decoder

# Power
PRODUCT_PACKAGES += \
    power.universal5410 \
    android.hardware.power@1.0-impl \
    libbt-vendor

# Samsung
#PRODUCT_PACKAGES += \
    SamsungServiceMode

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# USB HAL
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libnetcmdiface \
    macloader \
    wpa_supplicant \
    wpa_supplicant.conf \
    wificond

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl


# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

ifeq ($(WITH_TWRP),true)
# TWRP
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
endif




# Oreo
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Dex2oat optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false

# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call the common proprietary setup
$(call inherit-product, vendor/samsung/exynos5410-common/exynos5410-common-vendor.mk)

# call Gapps config
#$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
