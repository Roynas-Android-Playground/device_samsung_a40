#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

import re

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/samsung/exynos7885-common',
    'device/samsung/exynos7885-common',
    'hardware/samsung',
    'hardware/samsung_slsi-linaro/exynos',
    'hardware/samsung_slsi-linaro/graphics',
]

blob_fixups: blob_fixups_user_type = {
    'vendor/lib/libexynoscamera3.so': blob_fixup()
        .add_needed('libshim_camera.so')
        .binary_regex_replace(
            re.escape(bytes.fromhex('5f5a4e37616e64726f69643546656e6365')),
            bytes.fromhex('5f5a4e376578796e6f73353546656e6365'),
        ),
    'vendor/lib/hw/audio.primary.exynos7904.so': blob_fixup()
        .replace_needed('libaudioroute.so', 'libaudioroute.exynos7885.so')
        .replace_needed('libtinyalsa.so', 'libtinyalsa.exynos7885.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'a40',
    'samsung',
    blob_fixups=blob_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module,
        'exynos7885-common',
        module.vendor,
    )
    utils.run()
