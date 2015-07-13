// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
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
                position: 0
                color: "#000a11"
            }
            GradientStop {
                position: 0.25
                color: "#001220"
            }
            GradientStop {
                position: 0.37
                color: "#001a2d"
            }
            GradientStop {
                position: 0.50
                color: "#00233b"
            }
            GradientStop {
                position: 0.62
                color: "#002d4e"
            }
            GradientStop {
                position: 0.75
                color: "#00365d"
            }
            GradientStop {
                position: 0.87
                color: "#004270"
            }
            GradientStop {
                position: 1
                color: "#004d82"
            }
        }
    }
    anchors.fill: parent
    signal back;
    signal gamePage;
    signal instructionPage2;
    orientationLock: PageOrientation.LockPortrait
    //....

    TabBar {
        id: tabBar
        platformInverted: toolBar.platformInverted
        anchors { left: parent.left; right: parent.right; top: parent.top }
        TabButton { tab: tab1content; text: "Резервирует"; }
        /*TabButton { tab: tab2content; text: "Инструкция"; }*/
        TabButton { tab: tab3content; text: "Что нового"; }
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
                anchors.top: statusBar.bottom;
                anchors.bottom: toolBar.top;
                anchors.left: parent.left;
                anchors.right: parent.right
                contentWidth: parent.width;
                contentHeight: c.height
                flickableDirection: Flickable.VerticalFlick
                clip: true
                Column{
                    id:c
                    spacing: 5;
                    anchors.top: statusBar.bottom;
                    anchors.bottom: toolBar.top;
                    anchors.left: parent.left;
                    anchors.right: parent.right
                    anchors.topMargin: 20;
                    anchors.verticalCenter: parent.verticalCenter

                ListItem {
                      id: listItem1
                      subItemIndicator: true
                      onClicked: {gamePage();}
                      Column {
                          anchors.fill: listItem1.paddingItem
                          ListItemText {
                              id: titleText
                              mode: listItem1.mode
                              role: "Title"
                              text: "Игры"
                          }
                          ListItemText {
                              id: subtitleText
                              mode: listItem1.mode
                              role: "SubTitle"
                              text: "Список"
                          }
                      }

                 }
                /*ListItem {
                      id: listItem2
                      subItemIndicator: true
                      onClicked: {programPage1();}
                      Column {
                          anchors.fill: listItem2.paddingItem
                          ListItemText {
                              id: titleText2
                              mode: listItem2.mode
                              role: "Title"
                              text: "Настройки сторонних программ"
                          }
                          ListItemText {
                              id: subtitleText2
                              mode: listItem2.mode
                              role: "SubTitle"
                              text: "Список"
                          }
                      }

                 }*/
            }
          }
        }

        // define the content for tab 2
        Page {
            id: tab2content
            Flickable {
                id: flickArea1
                anchors.fill: parent
                anchors.top: statusBar.bottom;
                anchors.bottom: toolBar.top;
                anchors.left: parent.left;
                anchors.right: parent.right
                contentWidth: parent.width;
                contentHeight: c1.height
                flickableDirection: Flickable.VerticalFlick
                clip: true
                Column{
                    id:c1
                    spacing: 5;
                    anchors.top: statusBar.bottom;
                    anchors.bottom: toolBar.top;
                    anchors.left: parent.left;
                    anchors.right: parent.right
                    anchors.topMargin: 20;
                    anchors.verticalCenter: parent.verticalCenter
                ListItem {
                      id: listItem3
                      subItemIndicator: true
                      onClicked: {instructionPage2();}
                      Column {
                          anchors.fill: listItem3.paddingItem
                          ListItemText {
                              id: titleText3
                              mode: listItem3.mode
                              role: "Title"
                              text: "Как работает программа"
                          }
                          ListItemText {
                              id: subtitleText3
                              mode: listItem3.mode
                              role: "SubTitle"
                              text: "Прочитать"
                      }
                      }
                 }
                QueryDialog{
                    id: informationDialog
                    titleText: "Как работает программа"
                    icon: "image/note_info.svg"
                    message: "SaveRestGames - программа для резервирования и восстановления сохранений игр.

Внимание!
Программа восстанавливает сохранения именно на тот диск, где ранее была установлена игра. Если в данный момент у вас игры на разных дисках, то настоятельно рекомендую выбрать один из дисков и на него устанавливать игры.
Если так получилось, что вы не помните на каких дисках были игры, или нужно восстановить конкретные сейвы, обратитесь к Anastasiya Zamoshnikova (раздел Инфо).

После нажатия на SaveGames появятся точки загрузки.
Не бойтесь и не трогайте телефон, просто ждите.
(Владельцы ранних версий Symbian увидят надпись Nokia


После нажатия на RestGame будет происходить восстановление таким же образом."
                    acceptButtonText: "Ok"
                }
                /*ListItem {
                      id: listItem4
                      subItemIndicator: true
                      onClicked: {informationDialog1.open();}
                      Column {
                          anchors.fill: listItem4.paddingItem
                          ListItemText {
                              id: titleText4
                              mode: listItem4.mode
                              role: "Title"
                              text: "Советы"
                          }
                      }
                 }
                QueryDialog{
                    id: informationDialog1
                    titleText: "Советы"
                    icon: "image/note_info.svg"
                    message: "1. Перед запуском выключите все приложения, вы всё равно не сможете ими пользоваться во время работы программы. А поскольку резервирование происходит несколько минут, включите беззвучный или автономный режим.
2. Резервирование (Backup) достаточно производить 1 раз в неделю или перед серьезными изменениями в системе, будь это обновление или эксперименты.
Не обязательно каждый день пытаться сохранить настройки, от этого пользы будет не так много, как кажется.
3. BackupRestore восстанавливает настройки на те же диски, на которых были установлены программы в момент резервирования. Если сторонняя программа окажется на другом диске, восстановление для нее не произойдет.
Чтобы не путаться, рекомендую устанавливать проверенные программы на диск E, а сомнительные на флешку."
                    acceptButtonText: "Ok"
                }*/
               }
            }
        }
        // define the content for tab 3
        Page {
            id: tab3content
            Flickable {
                id: flickArea2
                anchors.fill: parent
                anchors.top: statusBar.bottom;
                anchors.bottom: toolBar.top;
                anchors.left: parent.left;
                anchors.right: parent.right
                contentWidth: parent.width; contentHeight: c2.height
                flickableDirection: Flickable.VerticalFlick
                clip: true
                Column{
                    id:c2
                    spacing: 5;
                    anchors.top: statusBar.bottom;
                    anchors.bottom: toolBar.top;
                    anchors.left: parent.left;
                    anchors.right: parent.right
                    anchors.topMargin: 20;
                    anchors.verticalCenter: parent.verticalCenter
                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        id: logo
                        source: "image/Update.svg"
                        width: 100; height: 100;
                        sourceSize.width: 100;
                        sourceSize.height: 100;
                        MouseArea{
                            anchors.fill: parent
                        }
                    }
                    Label {
                        width: parent.width
                        wrapMode: Text.WordWrap
                        textFormat: Text.RichText
                        text: "<html>
                    <b>1.3:</b>
                    <ul>
                    <li>Undroid 2</li>
                    </ul>
                    </html>"
                                }
                    Label {
                        width: parent.width
                        wrapMode: Text.WordWrap
                        textFormat: Text.RichText
                        text: "<html>
                    <b>1.2</b>
                    <ul>
                    <li>4 Фото 1 Слово</li>
<li>Слова</li>
<li>Azkend2</li>
<li>BackBreaker</li>
<li>Buggy Coaster</li>
<li>Copter It</li>
<li>Dalton</li>
<li>Dalton - The Awesome Reloaded</li>
<li>Dungeon Hunter 2 HD</li>
<li>Eternal Legacy </li>
<li>Gears</li>
<li>FarmFrenzy2</li>
<li>FlappyBird (Версия Николая)</li>
<li>Hockey Nations</li>
<li>iBomberDefence</li>
<li>JetEx</li>
<li>JetEx2</li>
<li>JetEx2 Balance</li>
<li>Jetex Freeride</li>
<li>Jetex BombSaway2</li>
<li>Lafix2</li>
<li>LetsGolf</li>
<li>LetsGolf 2</li>
<li>MotocrossMasters</li>
<li>NeonMania</li>
<li>PES2011</li>
<li>Powerboat Challenge</li>
<li>Red Bull X Fighters</li>
<li>SaveTheKitty</li>
<li>Slam Dunk Basketball</li>
<li>Speedfest</li>
<li>The Sims 3 HD</li>
<li>Tin-Tin</li>
<li>Tom Clancy's HAWX HD</li>
<li>Toy Tanks</li>
<li>Turbo Grannies</li>
<li>VehicleTraffic</li>
<li>VehicleTrafficExtrem</li>
<br>
<br>
<br>
                    </ul>
                    </html>"
                        }
                     }
                   }
                }

        }
    Image {
        id: statusBar
        opacity: 0
    }
    ToolBar {
        id: toolBar
        anchors.bottom: parent.bottom
        tools: ToolBarLayout {
            id: toolBarLayout
            ToolButton {
                flat: true
                id:backbtn;
                platformInverted: toolBar.platformInverted
                iconSource: "toolbar-back.png"
                onClicked: {back();}
            }
            ToolButton {
                flat: true
                iconSource: "image/VK1.png"
                onClicked: {Qt.openUrlExternally("http://vk.com/symbian_zone");}
        }
            ToolButton {
                flat: true
                iconSource: ""
                onClicked: {}
            }
        }
    }
}

