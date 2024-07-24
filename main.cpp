#include <QQmlApplicationEngine>
#include <QIcon>
#include <QUrl>
#include <qtwebengineglobal.h>

#ifdef USE_NATIVE_LOOK_AND_FEEL
#	include <QApplication>
#else
#	include <QGuiApplication>
#endif


int main(int argc, char *argv[])
{
    // Set up QWebEngine.
    QtWebEngine::initialize();

#ifdef USE_NATIVE_LOOK_AND_FEEL
    QApplication app(argc, argv);
#else
    QGuiApplication app(argc, argv);
#endif

    app.setApplicationName("qwb");
    app.setApplicationVersion("0.0.1");

    QIcon::setThemeName("oxygen");

    // Set up QML.
    QQmlApplicationEngine engine;

    // Load our main qml file.
    engine.load(QUrl("qrc:/qml/main.qml"));

    return app.exec();
}
