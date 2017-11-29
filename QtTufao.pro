#-------------------------------------------------
#
# Project created by QtCreator 2014-04-14T14:17:36
#
#-------------------------------------------------

TEMPLATE = lib
VERSION = 1.4.4
TARGET = QtTufao

QT -= gui
QT += websockets network
CONFIG += c++11 debug_and_release

build_pass:CONFIG(debug, debug|release) {
    unix: TARGET = $$join(TARGET,,,_debug)
    else: TARGET = $$join(TARGET,,,d)
}

DEFINES += TUFAO_LIBRARY
DEFINES += BUFFER_SIZE=128

INCLUDEPATH += 3rd/boost.http/include C:/local/boost_1_65_1
INCLUDEPATH += src/priv src/tests include

LIBS += -LC:/local/boost_1_65_1/lib64-msvc-14.0

include(src/src.pri)
include(include/include.pri)

headersDataFiles.path = $$[QT_INSTALL_HEADERS]/$$TARGET/
headersDataFiles.files = $$HEADERS_PUB $$INC_HEADERS_PUB
INSTALLS += headersDataFiles

libraryFiles.path = $$[QT_INSTALL_LIBS]
CONFIG(debug, debug|release):libraryFiles.files = $$OUT_PWD/debug/*.a $$OUT_PWD/debug/*.lib $$OUT_PWD/debug/*.prl
CONFIG(release, debug|release):libraryFiles.files = $$OUT_PWD/release/*.a $$OUT_PWD/release/*.lib $$OUT_PWD/release/*.prl
INSTALLS += libraryFiles

binFiles.path = $$[QT_INSTALL_BINS]
CONFIG(debug, debug|release):binFiles.files = $$OUT_PWD/debug/*.so $$OUT_PWD/debug/*.dll
CONFIG(release, debug|release):binFiles.files = $$OUT_PWD/release/*.so $$OUT_PWD/release/*.dll
INSTALLS += binFiles
