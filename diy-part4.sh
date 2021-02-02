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
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#更改主机名
sed -i 's/OpenWrt/FriendlyWRT/g' package/base-files/files/bin/config_generate

#修改默认主题为argon
sed -i 's/luci-theme-bootstrap/luci-theme-argonv3/g' ./feeds/luci/collections/luci/Makefile

#添加编译信息
sed -i 's/Mod 21.01 by CTCGFW/Mod 21.01 by CTCGFW | Build by WYAP/g' package/lean/default-settings/files/zzz-default-settings
