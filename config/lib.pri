include($${PWD}/common.pri)


DESTDIR = $${LIBS_PATH}/ # Устанавливаем путь, куда будет помещена собранная библеотека

win32: DLLDESTDIR = $${BIN_PATH}/ # Устанавливаем путь, куда дополнительно будет помещена собранная dll библеотека

TARGET = $${TARGET}$${LIB_BUILD_SUFFIX} # Добавляем к имене выходного файла суффикс сборки (для debug - d)

#VERSION = 1.0.0 # Пока закомментированно т.к. имеются нюансы с версификацией

#QMAKE_TARGET_COPYRIGHT = (c) My Company Name


# Настраиваем копирование заголовочных файлов с помощью модуля file_copies
CONFIG += file_copies

    COPIES += translations

    translations.path = $$INCLUDE_PATH

    #translations.files = $$files($${PWD}/*.h) # Данная переменная устанавливается в .pro файле конкретной библеотеки
