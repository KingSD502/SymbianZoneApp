QT += xml
# Add more folders to ship with the application, here
#folder_01.source = qml/SymbianZoneApp
#folder_01.target = qml
#DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

symbian:TARGET.UID3 = 0xE515C6DA
symbian:TARGET.CAPABILITY +=SwEvent ReadUserData Location WriteDeviceData ReadDeviceData NetworkServices PowerMgmt ProtServ

vendorinfo =  "%{\"Symbian Zone\"}" \
    ":\"Symbian Zone\""
vendor.pkg_prerules = vendorinfo
symbian:DEPLOYMENT += vendor

packageheader = "$${LITERAL_HASH}{\"Symbian Zone App\"}, (0xE515C6DA), 1, 2, 0, TYPE=SA"
info.pkg_prerules=packageheader
symbian:DEPLOYMENT+=info
symbian:TARGET.EPOCHEAPSIZE = 0x19000 0x4000000
symbian:LIBS+=-lapgrfx
symbian:LIBS+=-leikcore
symbian:LIBS+=-lavkon
symbian:LIBS+=-leiksrv
symbian:LIBS+=-lcone
symbian:LIBS+=-lapparc
symbian:LIBS+=-lws32
symbian:LIBS+=-lcentralrepository
symbian:LIBS+=-lmpxcollectionutility
symbian:LIBS+=-lmpxcommon
symbian:LIBS+=-lmpxplaybackutility
symbian:LIBS+=-lefsrv
symbian:LIBS+=-llogcli
symbian:LIBS+=-ltzclient
symbian:LIBS+=-lakncapserverclient
symbian:LIBS+=-lgdi
symbian:LIBS+=-lbitgdi
symbian:LIBS+=-laknskins
symbian:LIBS+=-lfbscli
symbian:LIBS+=-legul
symbian:LIBS+=-laknicon
symbian:LIBS+=-letel3rdparty
symbian:LIBS+=-lmsgs
symbian:LIBS+=-letel
symbian:LIBS+=-letelmm
symbian:LIBS+=-lsmcm
symbian:LIBS+=-lgsmu
symbian:LIBS+=-lmtur
symbian:LIBS+=-letext
symbian:LIBS+=-laknnotify
symbian:LIBS+=-leiksrv
symbian:LIBS+=-lestor
symbian:LIBS+=-lsecui
#symbian:LIBS+=-llockclient
symbian:LIBS+=-lthumbnailmanager
symbian:LIBS+=-lIclExtJpegApi
symbian:LIBS+=-lbitmaptransforms
symbian:LIBS+=-limageconversion
symbian:LIBS+=-lMetaDataUtility
symbian:LIBS+=-lhwrmpowerclient
# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# Add dependency to Symbian components
CONFIG += qt-components

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    application.cpp \
    #Utils.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

srv = "\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/Backup.dat\" - \"C:\System\Backup\Backup.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/DelRest.dat\" - \"C:\System\Backup\DelRest.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/DomRest.dat\" - \"C:\System\Backup\DomRest.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RestGame.dat\" - \"C:\System\Backup\RestGame.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RestCMD1.dat\" - \"C:\System\Backup\RestCMD1.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RestCMD2.dat\" - \"C:\System\Backup\RestCMD2.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RestCMD3.dat\" - \"C:\System\Backup\RestCMD3.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RG1/RestCMD.txt\" - \"C:\System\Backup\RG1\RestCMD.txt\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RG2/RestCMD.txt\" - \"C:\System\Backup\RG2\RestCMD.txt\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/RG3/RestCMD.txt\" - \"C:\System\Backup\RG3\RestCMD.txt\" \
#\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/Restore.dat\" - \"C:\System\Backup\Restore.dat\" \
\"C:/workspace/SymbianZoneApp/sis/C_System/Backup/SaveGames.dat\" - \"C:\System\Backup\SaveGames.dat\" \
\"C:/workspace/SymbianZoneApp/sis/E_BackupFiles/boot1.exe\" - \"E:\BackupFiles\boot1.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_BackupFiles/domainsrv.exe\" - \"E:\BackupFiles\domainsrv.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/Backup.exe\" - \"E:\sys\bin\Backup.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/DelRest.exe\" - \"E:\sys\bin\DelRest.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/RestGame.exe\" - \"E:\sys\bin\RestGame.exe\" \
#\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/Restore.exe\" - \"E:\sys\bin\Restore.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/SaveGames.exe\" - \"E:\sys\bin\SaveGames.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/Backup_reg.rsc\" - \"E:\private\10003a3f\import\apps\Backup_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/RestGame_reg.rsc\" - \"E:\private\10003a3f\import\apps\RestGame_reg.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/Restore_reg.rsc\" - \"E:\private\10003a3f\import\apps\Restore_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/SaveGames_reg.rsc\" - \"E:\private\10003a3f\import\apps\SaveGames_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/Backup.mif\" - \"E:\resource\apps\Backup.mif\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/Backup.rsc\" - \"E:\resource\apps\Backup.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestGame.mif\" - \"E:\resource\apps\RestGame.mif\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestGame.rsc\" - \"E:\resource\apps\RestGame.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/Restore.mif\" - \"E:\resource\apps\Restore.mif\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/Restore.rsc\" - \"E:\resource\apps\Restore.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/SaveGames.mif\" - \"E:\resource\apps\SaveGames.mif\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/SaveGames.rsc\" - \"E:\resource\apps\SaveGames.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_Data/BackCmd.txt\" - \"C:\Data\BackCmd.txt\" \
\"C:/workspace/SymbianZoneApp/sis/C_Data/MiniCmd.txt\" - \"C:\Data\MiniCmd.txt\" \
#\"C:/workspace/SymbianZoneApp/sis/C_Data/RestCmd.txt\" - \"C:\Data\RestCmd.txt\" \
\"C:/workspace/SymbianZoneApp/sis/C_private/10003a3f/import/apps/BackCMD_reg.rsc\" - \"C:\private\10003a3f\import\apps\BackCMD_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_private/10003a3f/import/apps/MiniCMD_reg.rsc\" - \"C:\private\10003a3f\import\apps\MiniCMD_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_private/10003a3f/import/apps/RestCMD_reg.rsc\" - \"C:\private\10003a3f\import\apps\RestCMD_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_sys/bin/BackCMD.exe\" - \"C:\sys\bin\BackCMD.exe\" \
\"C:/workspace/SymbianZoneApp/sis/C_sys/bin/MiniCMD.exe\" - \"C:\sys\bin\MiniCMD.exe\" \
\"C:/workspace/SymbianZoneApp/sis/C_sys/bin/MiniCMD_Server.exe\" - \"C:\sys\bin\MiniCMD_Server.exe\" \
\"C:/workspace/SymbianZoneApp/sis/C_sys/bin/RestCMD.exe\" - \"C:\sys\bin\RestCMD.exe\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/BackCMD.mif\" - \"C:\resource\apps\BackCMD.mif\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/BackCMD.rsc\" - \"C:\resource\apps\BackCMD.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/MiniCMD.mif\" - \"C:\resource\apps\MiniCMD.mif\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/MiniCMD.rsc\" - \"C:\resource\apps\MiniCMD.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/RestCMD.mif\" - \"C:\resource\apps\RestCMD.mif\" \
\"C:/workspace/SymbianZoneApp/sis/C_resource/apps/RestCMD.rsc\" - \"C:\resource\apps\RestCMD.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/C_Data/Backup.txt\" - \"C:\Data\Backup.txt\" \
\"C:/workspace/SymbianZoneApp/sis/C_Data/re.txt\" - \"C:\data\re.txt\" \
\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/MiniCME_reg.rsc\" - \"E:\private\10003a3f\import\apps\MiniCME_reg.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/MiniCND_reg.rsc\" - \"E:\private\10003a3f\import\apps\MiniCND_reg.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/MiniCME.mif\" - \"E:\resource\apps\MiniCME.mif\" \
\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/MiniCME.rsc\" - \"E:\resource\apps\MiniCME.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/MiniCND.mif\" - \"E:\resource\apps\RestCND.mif\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/MiniCND.rsc\" - \"E:\resource\apps\RestCND.rsc\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/MiniCME.exe\" - \"E:\sys\bin\MiniCME.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/MiniCME_Server.exe\" - \"E:\sys\bin\MiniCME_Server.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/MiniCND.exe\" - \"E:\sys\bin\MiniCND.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/MiniCND_server.exe\" - \"E:\sys\bin\MiniCND_server.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/RestCMD1.exe\" - \"E:\sys\bin\RestCMD1.exe\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/RestCMD2.exe\" - \"E:\sys\bin\RestCMD2.exe\" \
#\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/RestCMD1_reg.rsc\" - \"E:\private\10003a3f\import\apps\RestCMD1_reg.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/RestCMD2_reg.rsc\" - \"E:\private\10003a3f\import\apps\RestCMD2_reg.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_private/10003a3f/import/apps/RestCMD3_reg.rsc\" - \"E:\private\10003a3f\import\apps\RestCMD3_reg.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD1.rsc\" - \"E:\resource\apps\RestCMD1.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD2.rsc\" - \"E:\resource\apps\RestCMD2.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD3.rsc\" - \"E:\resource\apps\RestCMD3.rsc\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD1.mif\" - \"E:\resource\apps\RestCMD1.mif\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD2.mif\" - \"E:\resource\apps\RestCMD2.mif\" \
#\"C:/workspace/SymbianZoneApp/sis/E_resource/apps/RestCMD3.mif\" - \"E:\resource\apps\RestCMD3.mif\" \
\"C:/workspace/SymbianZoneApp/sis/E_sys/bin/RestCMD3.exe\" - \"E:\sys\bin\RestCMD3.exe\""
srv1.pkg_postrules = srv
symbian:DEPLOYMENT += srv1

TRANSLATIONS +=
    deployRscFile = "IF (LANGUAGE=16) \
    \"text16.txt\" - \"\", FT, TA \
    ELSE \
    \"text.txt\" - \"\", FT, TA \
ENDIF"
    deployFiles.pkg_postrules += deployRscFile
    DEPLOYMENT += deployFiles

HEADERS += \
    application.h \
    #Utils.h

#show .qml fils only in QtCreator, not in .sis build
OTHER_FILES += qml/*.* \
    qml/SymbianZoneApp/image/warning.svg \
    qml/SymbianZoneApp/image/VK1.png \
    qml/SymbianZoneApp/image/Update.svg \
    qml/SymbianZoneApp/image/SplashScreen.png \
    qml/SymbianZoneApp/image/SaveGames1.svg \
    qml/SymbianZoneApp/image/SaveGames.svg \
    qml/SymbianZoneApp/image/Restore1.svg \
    qml/SymbianZoneApp/image/Restore.svg \
    qml/SymbianZoneApp/image/RestGame1.svg \
    qml/SymbianZoneApp/image/RestGame.svg \
    qml/SymbianZoneApp/image/ok.svg \
    qml/SymbianZoneApp/image/note_info.svg \
    qml/SymbianZoneApp/image/note.svg \
    qml/SymbianZoneApp/image/logo.svg \
    qml/SymbianZoneApp/image/info.png \
    qml/SymbianZoneApp/image/HelpPage.svg \
    qml/SymbianZoneApp/image/file.svg \
    qml/SymbianZoneApp/image/close.svg \
    qml/SymbianZoneApp/image/BackUp1.svg \
    qml/SymbianZoneApp/image/BackUp.svg \
    qml/SymbianZoneApp/image/about.svg \
    qml/SymbianZoneApp/SavegamePage.qml \
    qml/SymbianZoneApp/RestorePage.qml \
    qml/SymbianZoneApp/RestoregamePage.qml \
    qml/SymbianZoneApp/ProgramPage1.qml \
    qml/SymbianZoneApp/ProgramPage.qml \
    qml/SymbianZoneApp/OkDialog.qml \
    qml/SymbianZoneApp/OkDialog1.qml \
    qml/SymbianZoneApp/OkDialog2.qml \
    qml/SymbianZoneApp/MainPage.qml \
    qml/SymbianZoneApp/main.qml \
    qml/SymbianZoneApp/InstructionPage4.qml \
    qml/SymbianZoneApp/InstructionPage3.qml \
    qml/SymbianZoneApp/InstructionPage2.qml \
    qml/SymbianZoneApp/InstructionPage1.qml \
    qml/SymbianZoneApp/InstructionPage.qml \
    qml/SymbianZoneApp/InfoPage.qml \
    qml/SymbianZoneApp/HelpPage1.qml \
    qml/SymbianZoneApp/HelpPage.qml \
    qml/SymbianZoneApp/GamePage.qml \
    qml/SymbianZoneApp/BackupPage.qml

RESOURCES += \
    SymbianZoneApp.qrc
