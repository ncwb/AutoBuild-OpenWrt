#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/\/bin\/ash/\/bin\/bash/' openwrt/package/base-files/files/etc/passwd
sed -i 's/6.6/6.12/g' openwrt/target/linux/x86/Makefile
#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i 's/CPU_CFLAGS = -Os -pipe/CPU_CFLAGS = -O3 -mtune=generic -pipe/g' openwrt/include/target.mk
sed -i 's/= .20/= .22/g' openwrt/include/kernel-6.12
sed -i 's/.20 = 230e89b07b0ab82e74f07ecc1bee3105dca81d0ef4a97f900929c407249b6ac7/.22 = ab48800ab49985a78d2318ae8ac5f28fd3e123ea17357ef21498105a53337336/g' openwrt/include/kernel-6.12
sed -i 's/8.7.0/8.8.12/g' openwrt/feeds/packages/net/uugamebooster/Makefile
sed -i 's/87c72206bfe1c42ab89d6f5083e5c1cce1e5b6d2a191dea07532978bc3847169/a62270c3ed9e264c4de42cf7bfbfa4a28428a6e65455eedbe96c3223ca05e1d0/g' openwrt/feeds/packages/net/uugamebooster/Makefile
#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
mkdir -p openwrt/files/www
curl -so openwrt/files/www/gdyey.html https://raw.githubusercontent.com/ncwb/AutoBuild-OpenWrt/master/gdyey.html
#mv gdyey.html openwrt/files/www/gdyey.html
