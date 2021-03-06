#!/bin/bash

# This script contains the list of plugins migrated to nnbd
# that should be excluded from testing on Flutter stable until
# null-safe is available on stable.

readonly NNBD_PLUGINS_LIST=(
  "connectivity"
  "device_info"
  "flutter_plugin_android_lifecycle"
  "flutter_webview"
  "google_sign_in"
  "local_auth"
  "path_provider"
  "plugin_platform_interface"
  "url_launcher"
  "video_player"
)

export EXCLUDED_PLUGINS_FROM_STABLE=$(IFS=, ; echo "${NNBD_PLUGINS_LIST[*]}")
