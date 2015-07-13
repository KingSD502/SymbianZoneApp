#ifndef APPLICATION_H
#define APPLICATION_H

#include <QObject>
#include <QStringList>
#include <QSettings>
#include <e32base.h>
                               //UID без 0х
const QString UID1="A8528005"; //БэкАп 0xA8528005
const QString UID2="5852824E"; //Восcтановление 0x5852824E
const QString UID3="B9999992"; //БэкАп игр 0xB9999992
const QString UID4="B9999994"; //Восстановление игр 0xB9999994
class Application : public QObject
{
    Q_OBJECT
    QStringList selected;
public:
    explicit Application(QObject *parent = 0);

signals:
    void setToggle1(bool newstate);
    void setToggle2(bool newstate);
    void setToggle3(bool newstate);
    void setToggle4(bool newstate);
    void setToggle1Check(bool newstate);
    void setToggle2Check(bool newstate);
    void setToggle3Check(bool newstate);
    void setToggle4Check(bool newstate);
public slots:
    void launch(QString uid);
    void updateSetting(bool val1, bool val2, bool val3, bool val4);
    void checkSetting();
    bool checkRoot();
};

#endif // APPLICATION_H
