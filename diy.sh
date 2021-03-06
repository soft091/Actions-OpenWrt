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


# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
svn co https://github.com/Lienol/openwrt-package/trunk/package/brook package/brook
svn co https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
svn co https://github.com/Lienol/openwrt-package/trunk/package/tcping package/tcping
svn co https://github.com/Lienol/openwrt-package/trunk/package/trojan-go package/trojan-go
svn co https://github.com/Lienol/openwrt-package/trunk/package/syncthing package/syncthing
mkdir dl && cd dl && wget https://static.adguard.com/adguardhome/release/AdGuardHome_linux_amd64.tar.gz && cd ..

./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
