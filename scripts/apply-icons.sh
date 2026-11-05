#!/usr/bin/env bash
# ينسخ أيقونة التطبيق فوق أيقونة Capacitor الافتراضية في مشروع android المولَّد.
set -euo pipefail
SRC="resources/android"
DST="android/app/src/main/res"
for d in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  cp "$SRC/mipmap-$d/ic_launcher.png"            "$DST/mipmap-$d/ic_launcher.png"
  cp "$SRC/mipmap-$d/ic_launcher_round.png"      "$DST/mipmap-$d/ic_launcher_round.png"
  cp "$SRC/mipmap-$d/ic_launcher_foreground.png" "$DST/mipmap-$d/ic_launcher_foreground.png"
done
cp "$SRC/ic_launcher_background.xml" "$DST/values/ic_launcher_background.xml"
echo "icons applied"
