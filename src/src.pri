
SOURCES += \
    $$PWD/httpserver.cpp \
    $$PWD/httpserverrequest.cpp \
    $$PWD/httpserverresponse.cpp \
    $$PWD/httpsserver.cpp \
    $$PWD/priv/tcpserverwrapper.cpp \
    $$PWD/priv/reasonphrase.cpp \
    $$PWD/websocket.cpp \
    $$PWD/abstractmessagesocket.cpp \
    $$PWD/httpfileserver.cpp \
    $$PWD/httpserverrequestrouter.cpp \
    $$PWD/httppluginserver.cpp \
    $$PWD/headers.cpp \
    $$PWD/priv/rfc1123.cpp \
    $$PWD/priv/rfc1036.cpp \
    $$PWD/priv/asctime.cpp \
    $$PWD/sessionstore.cpp \
    $$PWD/simplesessionstore.cpp \
    $$PWD/notfoundhandler.cpp \
    $$PWD/urlrewriterhandler.cpp \
    $$PWD/httpupgraderouter.cpp \
    $$PWD/classhandlermanager.cpp \
    $$PWD/classhandler.cpp

HEADERS_PUB += \
    $$PWD/abstracthttpserverrequesthandler.h \
    $$PWD/abstracthttpupgradehandler.h \
    $$PWD/abstractmessagesocket.h \
    $$PWD/classhandler.h \
    $$PWD/classhandlermanager.h \
    $$PWD/headers.h \
    $$PWD/httpfileserver.h \
    $$PWD/httppluginserver.h \
    $$PWD/httpserver.h \
    $$PWD/httpserverplugin.h \
    $$PWD/httpserverrequest.h \
    $$PWD/httpserverrequestrouter.h \
    $$PWD/httpserverresponse.h \
    $$PWD/httpsserver.h \
    $$PWD/httpupgraderouter.h \
    $$PWD/ibytearray.h \
    $$PWD/notfoundhandler.h \
    $$PWD/session.h \
    $$PWD/sessionsettings.h \
    $$PWD/sessionstore.h \
    $$PWD/simplesessionstore.h \
    $$PWD/tufao_global.h \
    $$PWD/urlrewriterhandler.h \
    $$PWD/websocket.h

HEADERS_PRIV += \
    $$PWD/priv/asctime.h \
    $$PWD/priv/classhandlermanager.h \
    $$PWD/priv/cryptography.h \
    $$PWD/priv/dependencytree.h \
    $$PWD/priv/httpfileserver.h \
    $$PWD/priv/httppluginserver.h \
    $$PWD/priv/httpserver.h \
    $$PWD/priv/httpserverrequest.h \
    $$PWD/priv/httpserverrequestrouter.h \
    $$PWD/priv/httpserverresponse.h \
    $$PWD/priv/httpsserver.h \
    $$PWD/priv/httpupgraderouter.h \
    $$PWD/priv/reasonphrase.h \
    $$PWD/priv/rfc1036.h \
    $$PWD/priv/rfc1123.h \
    $$PWD/priv/sessionstore.h \
    $$PWD/priv/simplesessionstore.h \
    $$PWD/priv/tcpserverwrapper.h \
    $$PWD/priv/urlrewriterhandler.h \
    $$PWD/priv/websocket.h

HEADERS += $$HEADERS_PRIV $$HEADERS_PUB
