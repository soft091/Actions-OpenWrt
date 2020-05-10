#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.118.254/g' package/base-files/files/bin/config_generate
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# git clone https://github.com/Lienol/openwrt-package package/openwrt-package
# Theme
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat package/luci-theme-opentomcat
# SmartDNS
git clone https://github.com/u0225/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
# package
# git clone https://github.com/kenzok8/openwrt-packages.git package/mypackages
rm -rf package/lean/luci-app-ssr-plus
git clone https://github.com/fw876/helloworld.git package/helloworld

./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
