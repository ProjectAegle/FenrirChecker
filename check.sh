#!/usr/bin/env bash
adb shell "su -c "dd -if /dev/block/by-name/expdb -of /sdcard/expdb_dump.img""
adb pull /sdcard/expdb_dump.img
grep -a -A 3 "\[PART\] img_auth_required" expdb_dump.img
echo -------
echo Your Device is vulnerable by fenrir, if and only if you saw `img_auth_required = 0` on the above text
