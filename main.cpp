/*#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include "QDeclarativeContext"
#include <application.h>
#include <QtGui/QSplashScreen>
#include <QtGui/QPixmap>
#include <QDeclarativeView>
#include <QString>
#include <QUrl>*/
/*Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    QScopedPointer<QmlApplicationViewer> viewer(QmlApplicationViewer::create());

    viewer->rootContext()->setContextProperty("application",new Application())

}*/

/*Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    //Splashscreen
        QSplashScreen *splash = new QSplashScreen(QPixmap("qml/SymbianZoneApp/image/SplashScreen.png"));
        splash->show();
        splash->showMessage("Loading ...", Qt::AlignHCenter | Qt::AlignBottom, Qt::white);


    QmlApplicationViewer viewer;
    viewer.rootContext()->setContextProperty("application",new Application());
    viewer.setMainQmlFile(QLatin1String("qml/SymbianZoneApp/main.qml"));
    viewer.showExpanded();
  //remove splashscreen overlay
    splash->finish(&viewer);
    splash->deleteLater();

    return app->exec();
}*/
#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <QDeclarativeView>
#include <QDeclarativeContext>
#include <application.h>
#include <QtGui/QSplashScreen>
#include <QtGui/QPixmap>
#include <QString>
#include <QUrl>
#include <QDeclarativeView>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    //Splashscreen
    QSplashScreen *splash = new QSplashScreen(QPixmap(":/SplashScreen.jpg"));
    splash->show();

    //loading main.qml
    QmlApplicationViewer viewer;
    viewer.rootContext()->setContextProperty("application",new Application());
    viewer.setSource(QUrl("qrc:/qml/SymbianZoneApp/main.qml"));
    viewer.showFullScreen();

    //remove splashscreen overlay
    splash->finish(&viewer);
    splash->deleteLater();

    //app has to stay alive ;)
    return app.exec();
}
