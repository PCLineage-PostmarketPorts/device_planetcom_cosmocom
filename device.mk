#
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

DEVICE_PATH := device/planetcom/cosmocom

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/planetcom/cosmocom/cosmocom-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
PRODUCT_PACKAGES += \
    Snap

# Init cripts
# Init
PRODUCT_PACKAGES += \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6771.rc \
    init.mt6771.usb.rc \
    init.sensor_1_0.rc \
    fstab.mt6771 \
    ueventd.mt6771.rc \
    init.logger.rc 

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml 
# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-sp/libunwindstack.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libunwindstack-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-sp/libunwind.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libunwind.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-sp/libunwindstack.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libunwindstack.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-sp/libunwindstack.so:$(TARGET_COPY_OUT_VENDOR)/lib/libunwindstack-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-sp/libunwindstack.so:$(TARGET_COPY_OUT_VENDOR)/lib/libunwindstack.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-sp/libbacktrace.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbacktrace-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-sp/libbacktrace.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libbacktrace-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-core/libmedia_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/libmedia_helper-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-core/libmedia_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmedia_helper-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-core/libmedia_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/libmedia_helper-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-core/libmedia_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmedia_helper-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-sp/libbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libbase-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-sp/libbase.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbase-v28.so

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.soundtrigger@2.1-impl \
    android.hardware.bluetooth.a2dp@1.0-impl \
    android.hardware.bluetooth.a2dp@1.0-service \
    libtinycompress \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libaudiopreprocessing \
    libbundlewrapper \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libldnhncr \
    libreverbwrapper \
    libvisualizer \
    libtinycompress \
    libaudiofoundation \
    libaudiofoundation.vendor \
    libtinycompress.vendor

    
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DEVICE_PATH)/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml
    
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    libvulkan \
    libtinyxml
    
# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor
    
# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-impl.recovery \
    android.hardware.health@2.0-service
    
# Keymaster
PRODUCT_PACKAGES += \
    libkeymaster3.vendor:64 \
    libkeymaster3support.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libkeymaster_messages.vendor:64 \
    libsoft_attestation_cert.vendor:64 \
    libpuresoftkeymasterdevice.vendor:64 \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl

PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0.vendor


