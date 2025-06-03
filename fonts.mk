# Copyright (C) 2013 The Android Open Source Project
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

# We have to use PRODUCT_PACKAGES (together with BUILD_PREBUILT) instead of
# PRODUCT_COPY_FILES to install the font files, so that the NOTICE file can
# get installed too.

# Set emoji version in Android.bp
# $(call soong_config_set,emoji_font,emoji_font_version,$(RELEASE_PACKAGE_EMOJI_FONT_VERSION))
# $(call soong_config_set,flag_emoji_font,flag_emoji_font_version,$(RELEASE_PACKAGE_FLAG_EMOJI_FONT_VERSION))


PRODUCT_PACKAGES := \
    nyk_ngayogyan_jejeg.ttf \
    z009_pegon_horison.ttf

PRODUCT_COPY_FILES += \
    external/nusantara-fonts/fonts_customization.xml:${TARGET_COPY_OUT_SYSTEM}etc/fonts_customization.xml
