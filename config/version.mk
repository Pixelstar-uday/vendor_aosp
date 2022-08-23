# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2020 Fluid
# Copyright (C) 2023 Pixelstar
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

PRODUCT_VERSION_MAJOR = 21
PRODUCT_VERSION_MINOR = 0

# Versioning System
PIXELSTAR_NUM_VER := 1.0-Uday

TARGET_PRODUCT_SHORT := $(subst pixelstar_,,$(PIXELSTAR_BUILD_TYPE))

PIXELSTAR_BUILD_TYPE ?= UNOFFICIAL

# Check if the build is actually OFFICIAL
ifeq ($(filter-out OFFICIAL,$(PIXELSTAR_BUILD_TYPE)),)
  OFFICIAL_DEVICES = $(shell cat vendor/pixelstar/pixelstar.devices)
  FOUND_DEVICE =  $(filter $(PIXELSTAR_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(PIXELSTAR_BUILD))
      PIXELSTAR_BUILD_TYPE := OFFICIAL
    else
      PIXELSTAR_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(PIXELSTAR_BUILD)")
    endif
endif

# Only include Updater for official  build
ifeq ($(filter-out OFFICIAL,$(PIXELSTAR_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

# Sign builds if building an OFFICIAL build
ifeq ($(filter-out OFFICIAL,$(PIXELSTAR_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
PIXELSTAR_BUILD_VERSION := $(PIXELSTAR_NUM_VER)
PIXELSTAR_VERSION := $(PIXELSTAR_BUILD_VERSION)-$(PIXELSTAR_BUILD)-$(PIXELSTAR_BUILD_TYPE)-$(BUILD_TIME)-$(BUILD_DATE)
ROM_FINGERPRINT := Pixelstar/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
PIXELSTAR_DISPLAY_VERSION := $(PIXELSTAR_VERSION)
RELEASE_TYPE := $(PIXELSTAR_BUILD_TYPE)
