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
sed -i 's/= .63/= .68/g' openwrt/include/kernel-6.12
sed -i 's/.63 = 9502c5ffe4b894383c97abfccf74430a84732f04ee476b9c0d87635b29df7db3/.68 = d367c7504bd4da520dd01eb08125d2d0ac088bc8af4cd56d236f2074dd4225b7/g' openwrt/include/kernel-6.12
# sed -i '100i 		--enable-threads=posix \' openwrt/toolchain/gcc/common.mk
#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
# mkdir -p openwrt/files/etc/init.d
# curl -so openwrt/files/etc/init.d/uu https://raw.githubusercontent.com/ncwb/AutoBuild-OpenWrt/master/uu
#mv gdyey.html openwrt/files/www/gdyey.html
