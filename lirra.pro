include($${PWD}/config/common.pri)


TEMPLATE = subdirs

CONFIG += ordered # Собираем проекты а порядке перечисленном в переменной SUBDIRS

SUBDIRS += \
    src/lirra \
    src/sandbox
