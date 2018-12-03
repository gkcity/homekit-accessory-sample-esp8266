#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_SRCDIRS         := . \
                             ./device/definition \
                             ./device/handler \
                             ./device/handler/S_1_AccessoryInformation \
                             ./device/handler/S_8_Lightbulb \
                             ./device/iid \
                             ./device/initializer \
                             ./device/print \
                             ./persistence

