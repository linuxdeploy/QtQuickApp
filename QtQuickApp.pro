TEMPLATE = app

QT += qml quick
CONFIG += c++11 release

SOURCES += src/main.cpp

RESOURCES += src/qml.qrc

QML_IMPORT_PATH =

QML_DESIGNER_IMPORT_PATH =

DEFINES += QT_DEPRECATED_WARNINGS

# Default rules for deployment.

unix {
    isEmpty(PREFIX) {
        PREFIX = /usr
    }

    target.path = $$PREFIX/bin

    shortcutfiles.files = resources/qtquickapp.desktop
    shortcutfiles.path = $$PREFIX/share/applications/
    data.files += resources/qtquickapp.png
    data.path = $$PREFIX/share/pixmaps/

    INSTALLS += shortcutfiles
    INSTALLS += data
}

INSTALLS += target

DISTFILES += \
    resources/qtquickapp.desktop \
    resources/qtquickapp.png
