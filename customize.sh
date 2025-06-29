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
sed -i 's/= .34/= .35/g' openwrt/include/kernel-6.12
sed -i 's/.34 = a7f3fe381f67eca4172e9b63efb61a14bd7f9e1278e03603d0ff5a93f270c24d/.35 = 05f4e0b01dde578c3328eb539d305cccec7b84e939f6dd5f21fdaf5f313da748/g' openwrt/include/kernel-6.12
# sed -i '100i 		--enable-threads=posix \' openwrt/toolchain/gcc/common.mk
#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
mkdir -p openwrt/files/www
curl -so openwrt/files/www/gdyey.html https://raw.githubusercontent.com/ncwb/AutoBuild-OpenWrt/master/gdyey.html
#mv gdyey.html openwrt/files/www/gdyey.html
