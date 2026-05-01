#!/usr/bin/env bash
# ── Unit-3 Lockscreen launcher ──
# Usage:
#   lock.sh         → full reveal animation (~4s startup)
#   lock.sh --fast  → instant lock with static PNG bg (~2s startup)

# Skip if lockscreen is already running
pgrep -f "lockscreen.qml" >/dev/null && exit 0

# Pass fast mode to Quickshell via environment variable
if [[ "$1" == "--fast" ]]; then
   UNIT3_LOCK_FAST=1 QT_MEDIA_BACKEND=ffmpeg qs -p ~/.config/quickshell/widgets/lockscreen.qml
   else
    QT_MEDIA_BACKEND=ffmpeg qs -p ~/.config/quickshell/widgets/lockscreen.qml
fi

