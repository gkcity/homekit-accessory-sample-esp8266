# 固件信息

## 编译后的固件包括3个文件

* bootloader.bin
* partitions_singleapp.bin
* homekit-lightbulb.bin

## Linux下如何烧写固件？

请先下载esp烧写工具

```
esptool.py
    --chip esp8266
    --port /dev/ttyUSB0
    --baud 115200
    --before default_reset
    --after hard_reset write_flash -z
    --flash_mode qio
    --flash_freq 40m
    --flash_size 2MB 
      0x0000 bootloader.bin
      0x10000 homekit_lightbulb.bin
      0x8000 partitions_singleapp.bin
```

## Windows下如何烧写固件？

```
esptool
    --chip esp8266
    --port /dev/ttyUSB0
    --baud 115200
    --before default_reset
    --after hard_reset write_flash -z
    --flash_mode qio
    --flash_freq 40m
    --flash_size 2MB 
      0x0000 bootloader.bin
      0x10000 homekit_lightbulb.bin
      0x8000 partitions_singleapp.bin
```

## Setup Code 是什么？
```
031-45-154
```

## 板子启动后，将自动连接到路由器
```
ssid: gkct
pasword: hellogkct
```
