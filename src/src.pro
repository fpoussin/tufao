#-------------------------------------------------
#
# Project created by QtCreator 2014-04-14T14:17:36
#
#-------------------------------------------------

VERSION = 1.4.4
QT -= gui
TEMPLATE = lib
CONFIG += static_and_shared

include(src.pri)

headers_install.files = $$HEADERS

TARGET = Qt5Tufao

unix {
    target.path = /usr/lib
    headers_install.path = /usr/include/qt5/Qt5Tufao
    INSTALLS += target headers_install
}
