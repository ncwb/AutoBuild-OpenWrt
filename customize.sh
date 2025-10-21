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
sed -i 's/= .53/= .54/g' openwrt/include/kernel-6.12
sed -i 's/.53 = 663507accae673afcf4e210b4ae8d4352e61d926202e5da3f04bf71ca1d2c0b5/.54 = 1b0dcd3390efeec44e528748609bafcf36eae895bb68c8f62ac5e5940943de62/g' openwrt/include/kernel-6.12
# sed -i '100i 		--enable-threads=posix \' openwrt/toolchain/gcc/common.mk
#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
mkdir -p openwrt/files/www
curl -so openwrt/files/www/gdyey.html https://raw.githubusercontent.com/ncwb/AutoBuild-OpenWrt/master/gdyey.html
#mv gdyey.html openwrt/files/www/gdyey.html
