#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:2a6389cb01dc8ae3671025c78d590551a76c7d17; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:eab049dcb80131c10e8862c4dd91e6d2650ab519 EMMC:/dev/block/platform/bootdevice/by-name/recovery 2a6389cb01dc8ae3671025c78d590551a76c7d17 33554432 eab049dcb80131c10e8862c4dd91e6d2650ab519:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
