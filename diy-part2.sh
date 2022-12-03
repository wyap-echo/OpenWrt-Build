#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

#修改内核为4.19
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/armvirt/Makefile

#更改主机名
#sed -i 's/OpenWrt/FriendlyWRT/g' package/base-files/files/bin/config_generate

#修改默认主题为argon
#sed -i 's/luci-theme-bootstrap/luci-theme-argon-18.06/g' ./feeds/luci/collections/luci/Makefile

# cpufreq
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/feeds/luci/luci-app-cpufreq/Makefile
#sed -i 's/services/system/g' package/feeds/luci/luci-app-cpufreq/luasrc/controller/cpufreq.lua

# autocore
#sed -i 's/DEPENDS:=@(TARGET_bcm27xx||TARGET_bcm53xx||TARGET_ipq40xx||TARGET_ipq806x||TARGET_ipq807x||TARGET_mvebu||TARGET_rockchip)/DEPENDS:=@(TARGET_bcm27xx||TARGET_bcm53xx||TARGET_ipq40xx||TARGET_ipq806x||TARGET_ipq807x||TARGET_mvebu||TARGET_rockchip||TARGET_armvirt)/g' package/lean/autocore/Makefile

#删除无用feed
#sed -i '10,13d' feeds.conf.default

#添加额外软件包
#mkdir -p package/helloworld
#for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do \
#  svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "package/helloworld/$i"; \
#done

#svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
#svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx

#sed -i '/tools-y += ucl upx/d' tools/Makefile
#sed -i '/# subdirectories to descend into/a\tools-y += ucl upx' tools/Makefile
#sed -i "/\$(curdir)\/upx\/compile := \$(curdir)\/ucl\/compile/d" tools/Makefile
#sed -i '/# builddir dependencies/a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
