#-------------------------------------------------
#
# Project created by QtCreator 2014-04-14T14:17:36
#
#-------------------------------------------------

TEMPLATE = lib
VERSION = 1.4.4
TARGET = QtTufao

QT += network
CONFIG += c++11 debug_and_release create_prl

build_pass:CONFIG(debug, debug|release) {
    TARGET = $$join(TARGET,,,d)
}

DEFINES += TUFAO_LIBRARY
DEFINES += BUFFER_SIZE=128

INCLUDEPATH += $$PWD/3rd/boost.http/include
INCLUDEPATH += $$PWD/src $$PWD/src/priv $$PWD/src/tests $$PWD/include

windows:INCLUDEPATH += C:/local/boost_1_65_1
windows:LIBS += -LC:/local/boost_1_65_1/lib64-msvc-14.0

include(src/src.pri)
include(include/include.pri)

headersFiles.path = $$[QT_INSTALL_HEADERS]/QtTufao/
headersFiles.files = $$INC_HEADERS_PUB
INSTALLS += headersFiles

headersPrivFiles.path = $$[QT_INSTALL_HEADERS]/QtTufao/$$VERSION/QtTufao
headersPrivFiles.files = $$HEADERS_PUB
INSTALLS += headersPrivFiles

headersPriv2Files.path = $$[QT_INSTALL_HEADERS]/QtTufao/$$VERSION/QtTufao/private
headersPriv2Files.files = $$HEADERS_PRIV
INSTALLS += headersPriv2Files

libraryFiles.path = $$[QT_INSTALL_LIBS]
CONFIG(debug, debug|release):libraryFiles.files = $$OUT_PWD/debug/*.a $$OUT_PWD/debug/*.lib $$OUT_PWD/debug/*.prl
CONFIG(release, debug|release):libraryFiles.files = $$OUT_PWD/release/*.a $$OUT_PWD/release/*.lib $$OUT_PWD/release/*.prl
INSTALLS += libraryFiles

binFiles.path = $$[QT_INSTALL_BINS]
CONFIG(debug, debug|release):binFiles.files = $$OUT_PWD/debug/*.so* $$OUT_PWD/debug/*.dll
CONFIG(release, debug|release):binFiles.files = $$OUT_PWD/release/*.so* $$OUT_PWD/release/*.dll
INSTALLS += binFiles

featureFiles.path = $$[QT_INSTALL_DATA]/mkspecs/features
featureFiles.files = tufao1.prf
INSTALLS += featureFiles
