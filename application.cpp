#include "application.h"
#include <QDebug>
#include <QFile>
#include <apgcli.h>
#include <apacmdln.h>
#include <centralrepository.h>
#ifdef Q_OS_SYMBIAN
 #include <MGFetch.h>
 #include <e32debug.h>
 #include <f32file.h>
 #include <eikenv.h>
 #include <apgcli.h>
#include <apgtask.h>
#endif
#include <QProcess>
Application::Application(QObject *parent) :
    QObject(parent)
{
#ifdef Q_OS_SYMBIAN
   CRepository* cr=CRepository::NewL(TUid::Uid(0x101F8847));
   TBuf<1024> tdesval;
   qDebug()<<cr->Get(0x8,tdesval);
   delete cr;

   selected=QString::fromRawData(reinterpret_cast<const QChar*>(tdesval.Ptr()),tdesval.Length()).split(",");
   qDebug()<<selected;
   emit setToggle1(selected.contains(UID1));
   emit setToggle2(selected.contains(UID2));
   emit setToggle3(selected.contains(UID3));
   emit setToggle4(selected.contains(UID4));
#endif

}

void Application::launch(QString id)
{
    qDebug()<<"Launch"<<id;
    bool ok;
    TUid aUid=TUid::Uid((TUint32)id.toULong(&ok,16));
    RApaLsSession apaLsSession;
    User::LeaveIfError(apaLsSession.Connect());
    CleanupClosePushL(apaLsSession);
    TApaAppInfo appInfo;
    TInt retVal = apaLsSession.GetAppInfo(appInfo, aUid);
    if(retVal == KErrNone)
        {

        CApaCommandLine* cmdLine = CApaCommandLine::NewLC();
        cmdLine->SetExecutableNameL(appInfo.iFullName);
        cmdLine->SetCommandL(EApaCommandRun);
        cmdLine->SetCommandL(EApaCommandViewActivate);
        User::LeaveIfError( apaLsSession.StartApp(*cmdLine) );
        CleanupStack::PopAndDestroy(cmdLine);


        TParse p;
        CEikonEnv::Static()->FsSession().Parse(appInfo.iFullName,p);
        QString name=QString::fromRawData(reinterpret_cast<const QChar*>(p.NameAndExt().Ptr()),p.NameAndExt().Length());
        TApaTaskList list (CEikonEnv::Static()->WsSession());
        TApaTask tsk=list.FindApp(aUid);
        if (tsk.Exists()) tsk.BringToForeground();
        else
        {

            QProcess starter;
            starter.startDetached(name);
        }

        }
    else
        {
        // The application not found!
        }
    CleanupStack::PopAndDestroy(&apaLsSession);
}

void Application::updateSetting(bool val1, bool val2, bool val3, bool val4)
{
    TBuf<1024> val;
    selected.clear();
    if (val1) selected<<UID1; // порядок соответствует порядкам переключателей
    if (val2) selected<<UID2;
    if (val3) selected<<UID3;
    if (val4) selected<<UID4;
    for (int i=0;i<selected.count();i++)
    {
        TPtrC temp(static_cast<const TUint16*>(selected[i].utf16()), selected[i].length());
        val.Append(temp);
        if (i!=selected.count()-1) val.Append(_L(","));
    }
    CRepository* cr=CRepository::NewL(TUid::Uid(0x101F8847));
    cr->Set(0x8,val);
    delete cr;
}
void Application::checkSetting()
{
#ifdef Q_OS_SYMBIAN
   CRepository* cr=CRepository::NewL(TUid::Uid(0x101F8847));
   TBuf<1024> tdesval;
   qDebug()<<cr->Get(0x8,tdesval);
   delete cr;

   selected=QString::fromRawData(reinterpret_cast<const QChar*>(tdesval.Ptr()),tdesval.Length()).split(",");
   qDebug()<<selected;
   emit setToggle1Check(selected.contains(UID1));
   emit setToggle2Check(selected.contains(UID2));
   emit setToggle3Check(selected.contains(UID3));
   emit setToggle4Check(selected.contains(UID4));
#endif

}
bool Application::checkRoot()
{
    const QString checkPath=QString("C:\\sys\\bin\\test.ini");
    QSettings* test=new QSettings(checkPath,QSettings::IniFormat);
    test->setValue("1","test");
    test->sync();
    QFile f(checkPath);
    bool ex=f.exists();
    if (ex) f.remove();
    qDebug()<<"root access"<<ex;
    if (ex) {return true;}
    else return false;

}

