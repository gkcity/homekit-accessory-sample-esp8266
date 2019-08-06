# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

SET(DEVICE_SRC
        device/definition/Lightbulb.h
        device/definition/Lightbulb.c
        device/definition/S_1_AccessoryInformation.h
        device/definition/S_1_AccessoryInformation.c
        device/definition/P_1_2_Identify.h
        device/definition/P_1_2_Identify.c
        device/definition/P_1_3_Manufacturer.h
        device/definition/P_1_3_Manufacturer.c
        device/definition/P_1_4_Model.h
        device/definition/P_1_4_Model.c
        device/definition/P_1_5_Name.h
        device/definition/P_1_5_Name.c
        device/definition/P_1_6_SerialNumber.h
        device/definition/P_1_6_SerialNumber.c
        device/definition/P_1_7_FirmwareRevision.h
        device/definition/P_1_7_FirmwareRevision.c
        device/definition/S_8_Lightbulb.h
        device/definition/S_8_Lightbulb.c
        device/definition/P_8_9_On.h
        device/definition/P_8_9_On.c
        device/definition/P_8_10_Brightness.h
        device/definition/P_8_10_Brightness.c
        device/handler/OnPropertyGet.h
        device/handler/OnPropertyGet.c
        device/handler/OnPropertySet.h
        device/handler/OnPropertySet.c
        device/handler/S_1_AccessoryInformation/S_1_AccessoryInformation_doGet.h
        device/handler/S_1_AccessoryInformation/S_1_AccessoryInformation_doGet.c
        device/handler/S_1_AccessoryInformation/S_1_AccessoryInformation_doSet.h
        device/handler/S_1_AccessoryInformation/S_1_AccessoryInformation_doSet.c
        device/handler/S_8_Lightbulb/S_8_Lightbulb_doGet.h
        device/handler/S_8_Lightbulb/S_8_Lightbulb_doGet.c
        device/handler/S_8_Lightbulb/S_8_Lightbulb_doSet.h
        device/handler/S_8_Lightbulb/S_8_Lightbulb_doSet.c
        device/initializer/InitializeConfiguration.h
        device/initializer/InitializeConfiguration.c
        device/print/PrintValue.h
        device/print/PrintValue.c
        )

set(COMPONENT_SRCS
        ${DEVICE_SRC}
        persistence/HapPersistenceImpl.h
        persistence/HapPersistenceImpl.c
        HomeKitStack.h
        HomeKitStack.c
        main.c
        )

register_component()

ADD_DEFINITIONS(-DLWIP_SOCKET)
ADD_DEFINITIONS(-DESP8266)
ADD_DEFINITIONS(-DICACHE_FLASH)
#ADD_DEFINITIONS(-DTINY_DEBUG)
