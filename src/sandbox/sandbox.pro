include($${PWD}/../../config/app.pri)


TEMPLATE = app

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

# Указаем пути к каталогам заголовочных файлов внутренних (собираемых) библеотек.
INCLUDEPATH +=  $${PROJECT_ROOT_PATH}/src/lirra/

# Подключаем внутренние (собираемые) библеотеки
LIBS += -llirra$${LIB_BUILD_SUFFIX}
