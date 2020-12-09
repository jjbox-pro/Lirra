include($${PWD}/../../config/lib.pri)


TEMPLATE = lib

CONFIG += dll
CONFIG -= qt

DEFINES += LIRRA_LIBRARY

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    lirra.cpp

HEADERS += \
    lirra_global.h \
    lirra.h

# Указываем заголовочные файлы, которые будут скопированы в директорию INCLUDE_PATH
translations.files = $$files($${PWD}/*.h)

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
