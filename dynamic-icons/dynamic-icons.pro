TEMPLATE = lib
TARGET = default-dynamic-icons

CONFIG += c++14
CONFIG += plugin
CONFIG += no_plugin_name_prefix

INCLUDEPATH += ../lib
LIBS += -L../lib -lclockwork

ASSETS_PATH = /usr/share/clockwork/dynamic-icons/$$TARGET
DEFINES += ASSETS_PATH=\\\"$${ASSETS_PATH}\\\"

SOURCES += \
    calendar.cpp \
    clock.cpp

target.path = /usr/share/clockwork/dynamic-icons

assets.path = $$ASSETS_PATH
assets.files = \
    assets/icon-launcher-calendar.svg \
    assets/icon-launcher-clock.svg

INSTALLS += target assets

OTHER_FILES += *.svg