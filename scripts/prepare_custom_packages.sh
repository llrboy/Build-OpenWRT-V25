
sed -i 's/192.168.1.1/192.168.81.1/g' package/base-files/files/bin/config_generate


sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
git pull
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig

