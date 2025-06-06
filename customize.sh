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
sed -i 's/= .31/= .32/g' openwrt/include/kernel-6.12
sed -i 's/.31 = b04c5b3e5df6e0aa5e9cd1efe527fac99f9dd39a43b97f13b22f8ca93e524ba7/.32 = a9b020721778384507010177d3929e7d4058f7f6120f05a99d56b5c5c0346a70/g' openwrt/include/kernel-6.12
# sed -i '100i 		--enable-threads=posix \' openwrt/toolchain/gcc/common.mk
#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
mkdir -p openwrt/files/www
curl -so openwrt/files/www/gdyey.html https://raw.githubusercontent.com/ncwb/AutoBuild-OpenWrt/master/gdyey.html
#mv gdyey.html openwrt/files/www/gdyey.html
