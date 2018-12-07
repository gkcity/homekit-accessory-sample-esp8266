#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += tinymdns/source/src/dns-common \
                             tinymdns/source/src/dns-server \
			     tinymdns/source/src/mdns \

COMPONENT_SRCDIRS += tinymdns/source/src/dns-common/codec \
		     tinymdns/source/src/dns-common/message \
		     tinymdns/source/src/dns-server \
                     tinymdns/source/src/mdns \

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
