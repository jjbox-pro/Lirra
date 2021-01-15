include($${PWD}/../../config/lib.pri)


TEMPLATE = lib

CONFIG += dll
CONFIG -= qt

DEFINES += LIRRA_LIBRARY

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target


INCLUDEPATH += $${PROJECT_ROOT_PATH}/src/lirra/import/spdlog/include/ # Импортирумые заголовочные файлы бибилотеки для логированя


HEADERS += lirra.h

for(HEADER, HEADERS) {
    EXPORTED_HEADERS += $${PWD}/$${HEADER}
}


include(lirra/lirra.pri)
include(import/import.pri)


exportHeaderFiles($$EXPORTED_HEADERS, $$replace(PWD,[^/]+$,$$__EMPTY__)) # Если использовать ? в регэкспе, то при выполнении QMAKE такой регэксп косячится (по крайней мере команда mkpath с полученной строкой, не работает или работает некорректно)
