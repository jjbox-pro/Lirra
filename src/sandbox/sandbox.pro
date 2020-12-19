include($${PWD}/../../config/app.pri)


TEMPLATE = app

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

# Подключаем внутренние (собираемые) библеотеки
LIBS += -llirra$${LIB_BUILD_SUFFIX}

# Указаем пути к каталогам заголовочных файлов внутренних (собираемых) библеотек.
INCLUDEPATH +=  $${PROJECT_ROOT_PATH}/src/lirra/

SOURCES += \
        main.cpp
