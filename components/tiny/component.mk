#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += tiny/source/src/TinyBase \
                             tiny/source/src/TinyPortable \
		             tiny/source/src/TinyContainer \
                             tiny/source/src/TinyLog \
                             tiny/source/src/TinyStringUtil \
                             tiny/source/src/TinyRandom \
                             tiny/source/src/ByteBuffer \
                             tiny/source/src/Json \
                             tiny/source/src/StringArray \
                             tiny/source/src/Netty \
                             tiny/source/src/HttpClient \
                             tiny/source/src/TcpClient

COMPONENT_SRCDIRS += tiny/source/src/TinyBase \
		     tiny/source/src/TinyPortable \
		     tiny/source/src/TinyContainer \
		     tiny/source/src/TinyLog \
		     tiny/source/src/TinyStringUtil \
		     tiny/source/src/TinyRandom \
		     tiny/source/src/ByteBuffer \
		     tiny/source/src/Json \
		     tiny/source/src/Json/codec \
		     tiny/source/src/Json/value \
		     tiny/source/src/StringArray \
		     tiny/source/src/Netty \
		     tiny/source/src/Netty/selector \
		     tiny/source/src/Netty/channel \
		     tiny/source/src/Netty/channel/stream \
		     tiny/source/src/Netty/channel/multicast \
		     tiny/source/src/Netty/codec-http \
		     tiny/source/src/Netty/codec-websocket \
		     tiny/source/src/Netty/bootstrap \
		     tiny/source/src/Netty/handler \
		     tiny/source/src/HttpClient \
		     tiny/source/src/TcpClient

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
