CONFIG -=   debug_and_release \ # Отключаем создание папок debug и release в теневом каталоге.
            debug_and_release_target # Отключаем автоматическое создание целевого файла в каталогах debug и release.

CONFIG += c++17


__EMPTY__ # Пустая переменная

PROJECT_ROOT_PATH = $$replace(PWD,/[^/]+$,$$__EMPTY__) # Корневой путь проекта (папка config всегда должна распологаться в корне верхнего проекта subdirs!)

win32: {
    OS_SUFFIX = win32

    contains(QT_ARCH, x86_64): OS_SUFFIX = win64
}
linux-g++: OS_SUFFIX = linux

CONFIG(debug, debug|release) {
    BUILD_FLAG = debug
    LIB_BUILD_SUFFIX = d
} else {
    BUILD_FLAG = release
}

BIN_PATH = $${PROJECT_ROOT_PATH}/bin/$$OS_SUFFIX/$${BUILD_FLAG} # Путь для бинарников
BUILD_PATH = $${PROJECT_ROOT_PATH}/build/$$OS_SUFFIX/$${BUILD_FLAG}/$${TARGET} # Путь для файлов сборки
INCLUDE_PATH = $${PROJECT_ROOT_PATH}/include # Путь до заголовочных файлов экспортируемых (собираемых) библеотек текущего проекта
IMPORT_PATH = $${PROJECT_ROOT_PATH}/import # Путь до заголовочных файлов импортируемых библеотек
LIBS_PATH = $${PROJECT_ROOT_PATH}/lib/$${OS_SUFFIX} # Путь до собираемых библеотек

RCC_DIR = $${BUILD_PATH}/rcc/ # Устанавливаем путь для файлов ресурсов
UI_DIR = $${BUILD_PATH}/ui/ # Устанавливаем путь для файлов интерфейса пользователя
MOC_DIR = $${BUILD_PATH}/moc/ # Устанавливаем путь для мок файлов
OBJECTS_DIR = $${BUILD_PATH}/obj/ # Устанавливаем путь для обьектных файлов

LIBS += -L$${LIBS_PATH}/ # Устанавливаем путь до собираемых библеотек
#INCLUDEPATH += $${INCLUDE_PATH}/ # Устанавливаем путь до заголовочных файлов экспортируемых (собираемых) библеотек текущего проекта
INCLUDEPATH += $${IMPORT_PATH}/ # Устанавливаем путь до заголовочных файлов импортируемых библеотек
