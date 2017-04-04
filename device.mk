#
# Copyright 2017 The Android Open Source Project
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

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_HARDWARE := taimen

include device/google/wahoo/device.mk

PRODUCT_COPY_FILES += \
    device/google/taimen/init-taimen.rc:system/etc/init/init-taimen.rc \
    device/google/taimen/init.taimen.usb.rc:root/init.taimen.usb.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560 \

# camera service treble disable for bringup
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_treble=true

# Logging
PRODUCT_COPY_FILES += \
    device/google/taimen/init.logging.rc:root/init.$(PRODUCT_HARDWARE).logging.rc


PRODUCT_COPY_FILES += \
    device/google/taimen/nfc/libnfc-nxp.taimen.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# TODO: move this to wahoo.
PRODUCT_COPY_FILES += \
    device/google/taimen/fstab.hardware:root/fstab.$(PRODUCT_HARDWARE)
