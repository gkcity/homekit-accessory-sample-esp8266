# Accessory sample (lightbulb) on esp32

本项目源代码由 http://tinyhap.com 生成

## 配置编译环境
1. 下载包含homekit的esp-idf分支:
git clone https://github.com/gkcity/ESP8266_RTOS_SDK.git

2. esp-idf编译环境的配置,请参考官方文档

## 如何编译？
```bash
export IDF_PATH=/opt/esp-idf-8266-tiny
export ESP8266_TOOLCHAIN=/opt/xtensa-lx106-elf
export PATH=$ESP8266_TOOLCHAIN/bin:$PATH
make 
```

## 如何烧写？ 
```bash
make falsh
```

## 如何调试？
1. 打开串口，观察LOG。
2. 使用iOS里的家庭app绑定并测试此设备。

## 配置
```
031-45-154
```

## 板子启动后，将自动连接到路由器
```
ssid: gkct
pasword: hellogkct
```
