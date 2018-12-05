#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += tinyfx/source/src/IotTypedef \
                             tinyfx/source/src/IotFactory \
                             tinyfx/source/src/IotLauncher

COMPONENT_SRCDIRS         += tinyfx/source/src/IotTypedef \
                             tinyfx/source/src/IotTypedef/constant \
                             tinyfx/source/src/IotTypedef/device \
                             tinyfx/source/src/IotTypedef/device/access \
                             tinyfx/source/src/IotTypedef/device/format \
                             tinyfx/source/src/IotTypedef/device/constraint \
                             tinyfx/source/src/IotTypedef/operation \
                             tinyfx/source/src/IotTypedef/urn \
                             tinyfx/source/src/IotFactory \
                             tinyfx/source/src/IotLauncher

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
