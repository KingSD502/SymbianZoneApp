import QtQuick 1.1
import com.nokia.symbian 1.1

PageStackWindow {
    id: pgs
    //platformSoftwareInputPanelEnabled: true
    initialPage: mainPage

    showStatusBar: true
    showToolBar: true
    MainPage{
        id: mainPage
        onAbout:{pgs.pageStack.replace(aboutPage);}
        onBackupPage:{pgs.pageStack.replace(backupPage);}
        onRestorePage:{pgs.pageStack.replace(restorePage);}
        onSavegamePage:{pgs.pageStack.replace(savegamePage);}
        onRestoregamePage:{pgs.pageStack.replace(restoregamePage);}
        onHelpPage:{pgs.pageStack.replace(helpPage);}
        onHelpPage1:{pgs.pageStack.replace(helpPage1);}
        onUpdatePage: {pgs.pageStack.replace(updatePage);}
        onAppPage: {pgs.pageStack.replace(appPage);}
        onInfoPage: {pgs.pageStack.replace(infoPage);}
    }
    AboutPage{
        id: aboutPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    AppPage{
        id: appPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    BackupPage{
        id: backupPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    RestorePage{
        id: restorePage
        onBack:pgs.pageStack.replace(mainPage);
    }
    InfoPage{
        id: infoPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    SavegamePage{
        id: savegamePage
        onBack:pgs.pageStack.replace(mainPage);
    }
    RestoregamePage{
        id: restoregamePage
        onBack:pgs.pageStack.replace(mainPage);
    }
    HelpPage{
        onProgramPage:{pgs.pageStack.replace(programPage);}
        onProgramPage1:{pgs.pageStack.replace(programPage1);}
        onInstructionPage:{pgs.pageStack.replace(instructionPage);}
        onInstructionPage1:{pgs.pageStack.replace(instructionPage1);}
        id: helpPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    ProgramPage{
        id: programPage
        onBack:pgs.pageStack.replace(helpPage);
    }
    ProgramPage1{
        id: programPage1
        onBack:pgs.pageStack.replace(helpPage);
    }
    InstructionPage{
        id: instructionPage
        onBack:pgs.pageStack.replace(helpPage);
    }
    InstructionPage1{
        id: instructionPage1
        onBack:pgs.pageStack.replace(helpPage);
    }
    HelpPage1{
        onGamePage: {pgs.pageStack.replace(gamePage);}
        onInstructionPage2:{pgs.pageStack.replace(instructionPage2);}
        id: helpPage1
        onBack:pgs.pageStack.replace(mainPage);
    }
    GamePage{
        id: gamePage
        onBack:pgs.pageStack.replace(helpPage1);
    }
    InstructionPage2{
        id: instructionPage2
        onBack:pgs.pageStack.replace(helpPage1);
    }
    UpdatePage{
        id: updatePage
        onBack:pgs.pageStack.replace(mainPage);
    }
}
