include($${PWD}/common.pri)


DESTDIR = $${LIBS_PATH}/ # Устанавливаем путь, куда будет помещена собранная библеотека

win32: DLLDESTDIR = $${BIN_PATH}/ # Устанавливаем путь, куда дополнительно будет помещена собранная dll библеотека

TARGET = $${TARGET}$${LIB_BUILD_SUFFIX} # Добавляем к имене выходного файла суффикс сборки (для debug - d)

#VERSION = 1.0.0 # Пока закомментированно т.к. имеются нюансы с версификацией

#QMAKE_TARGET_COPYRIGHT = (c) My Company Name


defineTest(exportHeaderFiles){
    FILES = $$1

    BASE = $$2

    !exists($$INCLUDE_PATH): mkpath($$INCLUDE_PATH)

    #message(__BASE__: $$BASE)

    for(FILE, FILES) {
        #message(__FILE__: $$FILE)

        !isEmpty(BASE){
            DDIR = $$replace(FILE,[^/]+$,$$__EMPTY__)

            DDIR = $${INCLUDE_PATH}/$$replace(DDIR,$$BASE,$$__EMPTY__)
        } else {
            DDIR = $${INCLUDE_PATH}
        }

        #message(__DDIR__: $$DDIR)

        !exists($$DDIR): mkpath($$DDIR)

        win32:FILE ~= s,/,\\,g
        win32:DDIR ~= s,/,\\,g

        QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t)
    }

    export(QMAKE_POST_LINK)
}
