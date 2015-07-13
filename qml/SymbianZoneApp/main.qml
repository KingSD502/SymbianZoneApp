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
        onBackupPage:{pgs.pageStack.replace(backupPage);}
        onRestorePage:{pgs.pageStack.replace(restorePage);}
        onSavegamePage:{pgs.pageStack.replace(savegamePage);}
        onRestoregamePage:{pgs.pageStack.replace(restoregamePage);}
        onHelpPage:{pgs.pageStack.replace(helpPage);}
        onHelpPage1:{pgs.pageStack.replace(helpPage1);}
        onInfoPage: {pgs.pageStack.replace(infoPage);}
    }
    BackupPage{
        onInstructionPage3:{pgs.pageStack.replace(instructionPage3);}
        onSelectionbackupPage:{pgs.pageStack.replace(selectionbackupPage);}
        id: backupPage
        onBack:pgs.pageStack.replace(mainPage);
    }
    SelectionbackupPage{
        id: selectionbackupPage
        onBack:pgs.pageStack.replace(backupPage);
    }
    InstructionPage3{
        id: instructionPage3
        onBack:pgs.pageStack.replace(backupPage);
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
        onInstructionPage4:{pgs.pageStack.replace(instructionPage4);}
        id: savegamePage
        onBack:pgs.pageStack.replace(mainPage);
    }
    InstructionPage4{
        id: instructionPage4
        onBack:pgs.pageStack.replace(savegamePage);
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
}
