import QtQuick 1.1
import com.nokia.symbian 1.1
Page{
    Rectangle {
        id: background
        x: 0
        y: 0
        width: 640
        height: 640
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#2f2f30";
            }
            GradientStop {
                position: 0.25;
                color: "#807f7f";
            }
            GradientStop {
                position: 0.37;
                color: "#8d8c8c";
            }
            GradientStop {
                position: 0.50;
                color: "#a8a2a2";
            }
            GradientStop {
                position: 0.62;
                color: "#c2c2c2";
            }
            GradientStop {
                position: 0.75;
                color: "#cacaca";
            }
            GradientStop {
                position: 0.87;
                color: "#eaeaea";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
    }
    anchors.fill: parent
    signal about;
    signal updatePage;
    signal backupPage;
    signal restorePage;
    signal savegamePage;
    signal restoregamePage;
    signal helpPage;
    signal helpPage1;
    signal appPage;
    signal infoPage;
    orientationLock: PageOrientation.LockPortrait

 // define a tab bar with three buttons and link them to the content
    OkDialog{
            id:rootDialog;
            helpText: "Пожалуйста, включите патч Open4All для полноценной работы Symbian Zone App!!!<br>Запустить ROMPather+?"
        }
    /*OkDialog1{
            id:rootDialog1;
            helpText: "Пожалуйста, закройте все запущенные приложения!!!<br>Закрыть приложения?"
        }*/
    Component.onCompleted: {
                        if (!application.checkRoot()){
                            rootDialog.open();
                        }
                    }
             TabBar {
             id: tabBar
             anchors { left: parent.left; right: parent.right; top: parent.top }
             TabButton { tab: tab1content; text: "Программы"}
             TabButton { tab: tab2content; text: "Игры"}
             //TabButton { tab: tab4content; text: "Инфо"}
         }
         // define a blank tab group so we can add the pages of content later
         TabGroup {
             id: tabGroup
             anchors { left: parent.left; right: parent.right; top: tabBar.bottom; bottom: parent.bottom }

             // define the content for tab 1
             Page {
                 id: tab1content
                 Flickable {
                     id: flickArea
                     anchors.fill: parent
                     anchors.top: tabBar.bottom;
                     anchors.bottom: toolBar.top;
                     anchors.left: parent.left;
                     anchors.right: parent.right
                     contentWidth: parent.width; contentHeight: c.height+100
                     flickableDirection: Flickable.VerticalFlick
                     clip: true
                  Column {
                     id: c
                     spacing: 10
                     anchors.top: parent.top
                     anchors.topMargin: 0
                       Text {
                         id: title
                         color: "#ffffff"
                         text: ""
                         font.pixelSize: 25
                         font.bold: true
                         anchors.leftMargin: 5
                         anchors.left: parent.left
                     }

                  Image {
                     id: logo
                     anchors.horizontalCenter: parent.horizontalCenter
                     width: 150;
                     height: 150;
                     sourceSize.width: 150;
                     sourceSize.height: 150;
                     source: "image/logo.svg"
                     MouseArea {
                         id: logo1
                         x: -10
                         y: -20
                         width: parent.width +20
                         height: parent.height +20
                         anchors.verticalCenterOffset: -10
                         anchors.horizontalCenterOffset: 0
                         anchors.centerIn: parent
                         onClicked: {informationDialog1.open();}
                         }
                     }
             //Первый ряд
                  Image {
                     id: imageBackup
                     x: 60
                     width: 100
                     height: 100
                     anchors.horizontalCenter: rectFriends.horizontalCenter
                     source: "image/BackUp.svg"
                     Text {
                       id: title1
                       color: "#ffffff"
                       text: "Backup"
                       font.pixelSize: 15
                       x: 27
                       y: 93
                   }
                     MouseArea {
                         id: mouseBackup
                         x: -10
                         y: -20
                         width: parent.width +20
                         height: parent.height +20
                         anchors.verticalCenterOffset: -10
                         anchors.horizontalCenterOffset: 0
                         anchors.centerIn: parent
                         onClicked: {backupPage();}
                         }
                         anchors.verticalCenter: rectFriends.verticalCenter
                         opacity: 1
                     }

                     Image {
                       id: imageHelpPage
                       x: 130
                       y: 300
                       width: 100
                       height: 100
                       anchors.horizontalCenter: rectMe.horizontalCenter
                       source: "image/HelpPage.svg"
                       Text {
                         id: title2
                         color: "#ffffff"
                         text: "Помощь"
                         font.pixelSize: 15
                         x: 25
                         y: 95
                     }
                       MouseArea {
                         id: mouseHelpPage
                         x: -20
                         y: -5
                         width: parent.width +20
                         height: parent.height +20
                         anchors.verticalCenterOffset: 5
                         anchors.horizontalCenterOffset: -10
                         anchors.centerIn: parent
                         onClicked: {helpPage();}
                     }
                         anchors.verticalCenter: rectMe.verticalCenter
                         opacity: 1
                     }
                //Второй ряд
                     Image {
                       id: imageRestore
                       x: 200
                       anchors.top: parent.top
                       anchors.topMargin: 160
                       width: 100
                       height: 100
                       anchors.horizontalCenter: rectFriends.horizontalCenter
                       source: "image/Restore.svg"
                       Text {
                         id: title3
                         color: "#ffffff"
                         text: "Restore"
                         font.pixelSize: 15
                         x: 25
                         y: 95
                     }
                     MouseArea {
                         id: mouseRestore
                         x: -10
                         y: -20
                         width: parent.width +20
                         height: parent.height +20
                         anchors.verticalCenterOffset: -10
                         anchors.horizontalCenterOffset: 0
                         anchors.centerIn: parent
                         onClicked: {restorePage();}
                     }
                         anchors.verticalCenter: rectFriends.verticalCenter
                         opacity: 1
                     }

                    //anchors.verticalCenter: parent.verticalCenter
                      anchors.right: parent.right
                      anchors.left: parent.left
                    }
                  Button {
                      y: 430
                      //anchors.left: parent.left
                      //anchors.leftMargin: 50;
                      anchors.right: parent.right
                      anchors.rightMargin: 25;
                      anchors.horizontalCenter: parent.horizontalCenter
                      //anchors.verticalCenter: parent.verticalCenter
                      //anchors.bottom: toolBar.top;
                      width: mainPage.width * 0.30
                      height: mainPage.width * 0.15
                      text: "X-Plore"
                      onClicked: {сommondialog.open();}
                     }
                  }
                }
             // define the content for tab 2
             Page {
                 id: tab2content
                 Flickable {
                     id: flickArea2
                     anchors.fill: parent
                     anchors.top: statusBar.bottom;
                     anchors.bottom: toolBar.top;
                     anchors.left: parent.left;
                     anchors.right: parent.right
                     contentWidth: parent.width; contentHeight: c2.height+100
                     flickableDirection: Flickable.VerticalFlick
                     clip: true
                  Column {
                     id: c2
                     spacing: 10
                     anchors.top: parent.top
                     anchors.topMargin: 0
                       Text {
                         id: title10
                         color: "#ffffff"
                         text: ""
                         font.pixelSize: 25
                         font.bold: true
                         anchors.leftMargin: 5
                         anchors.left: parent.left
                     }
                  Image {
                     id: logo2
                     anchors.horizontalCenter: parent.horizontalCenter
                     width: 150;
                     height: 150;
                     sourceSize.width: 150;
                     sourceSize.height: 150;
                     source: "image/logo.svg"
                     MouseArea {
                         id: logo3
                         x: -10
                         y: -20
                         width: parent.width +20
                         height: parent.height +20
                         anchors.verticalCenterOffset: -10
                         anchors.horizontalCenterOffset: 0
                         anchors.centerIn: parent
                         onClicked: {informationDialog1.open();}
                         }
                  }
             //Первый ряд
                  Image {
                       id: imageSaveGames
                       x: 60
                       y: 450
                       width: 100
                       height: 100
                       anchors.horizontalCenter: rectFriends.horizontalCenter
                       source: "image/SaveGames.svg"
                       Text {
                         id: title11
                         color: "#ffffff"
                         text: "SaveGames"
                         font.pixelSize: 15
                         x: 15
                         y: 95
                     }
                       MouseArea {
                           id: mouseSaveGames
                           x: -10
                           y: -20
                           width: parent.width +20
                           height: parent.height +20
                           anchors.verticalCenterOffset: -10
                           anchors.horizontalCenterOffset: 0
                           anchors.centerIn: parent
                           onClicked:{savegamePage();}
                           }
                           anchors.verticalCenter: rectFriends.verticalCenter
                           opacity: 1
                       }
                  Image {
                    id: imageHelpPage1
                    x: 130
                    y: 300
                    width: 100
                    height: 100
                    anchors.horizontalCenter: rectMe.horizontalCenter
                    source: "image/HelpPage.svg"
                    Text {
                      id: title4
                      color: "#ffffff"
                      text: "Помощь"
                      font.pixelSize: 15
                      x: 25
                      y: 95
                  }
                    MouseArea {
                      id: mouseHelpPage1
                      x: -20
                      y: -5
                      width: parent.width +20
                      height: parent.height +20
                      anchors.verticalCenterOffset: 5
                      anchors.horizontalCenterOffset: -10
                      anchors.centerIn: parent
                      onClicked: {helpPage1();}
                  }
                      anchors.verticalCenter: rectMe.verticalCenter
                      opacity: 1
                  }
                //Второй ряд
                     Image {
                         id: imageRestGame
                         x: 200
                         y: 450
                         width: 100
                         height: 100
                         anchors.top: parent.top
                         anchors.topMargin: 160
                         anchors.horizontalCenter: rectMe.horizontalCenter
                         source: "image/RestGame.svg"
                         Text {
                           id: title12
                           color: "#ffffff"
                           text: "RestGame"
                           font.pixelSize: 15
                           x: 18
                           y: 95
                       }
                     MouseArea {
                          id: mouseRestGame
                          x: -10
                          y: -10
                          width: parent.width +20
                          height: parent.height +20
                          anchors.verticalCenterOffset: 5
                          anchors.horizontalCenterOffset: -10
                          anchors.centerIn: parent
                          onClicked: {restoregamePage();}
                     }
                          anchors.verticalCenter: rectMe.verticalCenter
                          opacity: 1
                     }
                      //anchors.verticalCenter: parent.verticalCenter
                      anchors.right: parent.right
                      anchors.left: parent.left
                  }
                  Button {
                      y: 430
                      //anchors.left: parent.left
                      //anchors.leftMargin: 50;
                      anchors.right: parent.right
                      anchors.rightMargin: 25;
                      anchors.horizontalCenter: parent.horizontalCenter
                      //anchors.verticalCenter: parent.verticalCenter
                      //anchors.bottom: toolBar.top;
                      width: mainPage.width * 0.30
                      height: mainPage.width * 0.15
                      text: "X-Plore"
                      onClicked: {сommondialog.open();}
                     }
                 }
              }            
    }
         CommonDialog {
              id: сommondialog
              titleText: "Внимание!"
              titleIcon: "image/warning.svg"
              content:
                  Column{
                      spacing: 10;
                      anchors.left: parent.left;
                      anchors.right: parent.right
                      anchors.leftMargin: 15;
                      anchors.rightMargin: 15;
                      id: c3;
                      anchors.top: parent.top
                      anchors.topMargin: 10;
                     Text {
                         id: txt
                         anchors.horizontalCenter: parent.horizontalCenter
                         width: parent.width
                         //horizontalAlignment: Text.AlignJustify
                         wrapMode: Text.WordWrap;
                         color: "white"
                         font.pixelSize: 20
                         text: "Если у вас X-Plore не установлен, то вы можете открыть стандарный файловый менджер.<br>
                         Продолжить?<br>"
                     }
                     ButtonRow {
                         id:b
                         exclusive: false
                         anchors.horizontalCenter: parent.horizontalCenter
                         anchors.bottom: parent.bottom;
                         anchors.bottomMargin: 15;
                         anchors.left: parent.left
                         anchors.leftMargin: 2;
                         anchors.right: parent.right
                         anchors.rightMargin: 2
                          Button {
                             iconSource: "image/ok.svg"
                             onClicked: {
                                 application.launch("0xA0000BCD");
                                 сommondialog.close();}
                          }
                          Button {
                             iconSource: "image/file.svg"
                              onClicked: {
                                 application.launch("0x101f84eb");
                                 сommondialog.close();
                                  }
                               }
                          Button{
                              iconSource: "image/close.svg"
                              onClicked: {сommondialog.close();
                                  }
                          }
                    }
              }
         }
         QueryDialog{
             id: informationDialog1
             titleText: "Новость!"
             icon: "image/note_info.svg"
             message: "Всем привет!
К сожалению у меня к вам плохие новости. В связи с тем, что я давно покинул платформу Symbian у меня нет
желания продолжать поддерживать и развивать это проект. Так что это последняя версия которая вышла в свет.
Проект закрыт!
Спасибо всем тем кто мне помогал!"
             acceptButtonText: "Ok"
         }

    Image {
        id: statusBar
        opacity: 0
    }
    Image{
        id: rectMe
        opacity: 0
    }
    Image{
        id:rectFriends
        opacity: 0
    }
    ToolBar {
        id: toolBar
        anchors.bottom: parent.bottom
        tools:
            ToolBarLayout {
               id: toolBarLayout
            ToolButton {

                flat: true
                id:backbtn;
                iconSource: "toolbar-back.png"
                onClicked: {Qt.quit();}
            }
            ToolButton {
                flat: true
                iconSource: "image/VK1.png"
                onClicked: {Qt.openUrlExternally("http://vk.com/symbian_zone");}
            }
              ToolButton {
                flat: true
                id:aboutbtn;
                iconSource: "image/info.png"
                onClicked: {infoPage();}
            }
        }
    }
}
