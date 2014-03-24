#
# Copyright (C) 2014 The OmniROM Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/samsung/n8000/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := GT-N8000
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_n8000
PRODUCT_DEVICE := n8000
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=p4noterfxx \
    TARGET_DEVICE=p4noterf \
    PRIVATE_BUILD_DESC="p4noterfxx-user 4.1.2 JZO54K N8000XXCML2 release-keys" \
    BUILD_FINGERPRINT="samsung/p4noterfxx/p4noterf:4.1.2/JZO54K/N8000XXCML2:user/release-keys"
