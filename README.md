# luci-app-cd8021x
Configuring 802.1x wired authentication on OpenWrt/LEDE<br/><br/>
OpenWrt 802.1x 拨号luci界面<br/><br/>
![screenshot](https://raw.githubusercontent.com/max0y/luci-app-cd8021x/master/screenshot.png)<br/>
##安装 Install<br/>
1. 这个包的功能实现依赖于*wpad*，需要先卸载*wpad-mini*，再安装*wpad*
```
opkg remove wpad-mini
opkg install wpad
```
2. 然后在[release][release_url]页面下载最新版luci-app-cd8021x, 并将下载的ipk文件上传至路由器/tmp目录
3. 安装luci-app-cd8021x
```
cd /tmp
opkg install luci-app-cd8021x_*.ipk
```
##编译 Compile<br/>
使用 OpenWrt 的 [SDK][openwrt_sdk_url] 编译， SDK使用注意事项：[Using the SDK][openwrt_sdk_usage_url]
```bash
# 解压下载好的 SDK
tar -xvf openwrt-sdk-ar71xx-generic_gcc-*.tar.xz
cd openwrt-sdk-ar71xx-*
# Clone 项目
git clone https://github.com/max0y/luci-app-cd8021x.git package/luci-app-cd8021x
# 选择要编译的包 LuCI -> 3. Applications
make menuconfig
# 开始编译
make package/luci-app-cd8021x/compile V=99
```

[release_url]: https://github.com/max0y/luci-app-cd8021x/releases
[openwrt_sdk_url]: https://downloads.lede-project.org/snapshots/targets/ar71xx/generic
[openwrt_sdk_usage_url]: https://openwrt.org/docs/guide-developer/using_the_sdk
