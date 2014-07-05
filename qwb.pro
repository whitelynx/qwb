TEMPLATE = app

QT += qml quick webengine

SOURCES += main.cpp

RESOURCES += qml.qrc icons.qrc

CONFIG += native_look_and_feel

CONFIG(native_look_and_feel) {
	USE_NATIVE_LOOK_AND_FEEL = 1
	DEFINES += USE_NATIVE_LOOK_AND_FEEL
	QT += widgets
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
