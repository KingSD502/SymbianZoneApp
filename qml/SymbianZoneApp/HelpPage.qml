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
    signal programPage;
    signal programPage1;
    signal instructionPage;
    signal instructionPage1;
    orientationLock: PageOrientation.LockPortrait
    //....

    TabBar {
        id: tabBar
        platformInverted: toolBar.platformInverted
        anchors { left: parent.left; right: parent.right; top: parent.top }
        TabButton { tab: tab1content; text: "Резервирует"; }
        TabButton { tab: tab2content; text: "Инструкция"; }
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
                      onClicked: {programPage();}
                      Column {
                          anchors.fill: listItem1.paddingItem
                          ListItemText {
                              id: titleText
                              mode: listItem1.mode
                              role: "Title"
                              text: "Настройки смартфона"
                          }
                          ListItemText {
                              id: subtitleText
                              mode: listItem1.mode
                              role: "SubTitle"
                              text: "Список"
                          }
                      }

                 }
                ListItem {
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

                 }
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
                      onClicked: {informationDialog.open();}
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
                    message: "BackupRestore - программа для резервирования и восстановления настроек.
Пригодится для тех, кто часто делает хард ресет, прошивает, или просто не любит долго настраивать свой смартфон после серьезной чистки.

После нажатия на Backup появятся точки загрузки.
Не бойтесь и не трогайте телефон, просто ждите.
(Владельцы ранних версий Symbian увидят надпись Nokia)

Время работы резервирования у каждого своё, в зависимости от количества установленного вами приложений.
У некоторых доходит и до 5 минут ожидания.

Когда программа закончит работу телефон перезагрузится и на диске E появится папка BackupFiles, которая хранит в себе все важные файлы, касающиеся настроек смартфона и программ.
На случай непредвиденных обстоятельств, эту папку можно скопировать в другое место и вернуть обратно, когда потребуется восстановление.

После нажатия на Restore программа подготовит смартфон к перезагрузке, после чего будет происходить восстановление."
                    acceptButtonText: "Ok"
                }
                ListItem {
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
                          ListItemText {
                              id: subtitleText4
                              mode: listItem4.mode
                              role: "SubTitle"
                              text: "Прочитать"
                      }
                 }
                }

                QueryDialog{
                    id: informationDialog1
                    titleText: "Советы"
                    icon: "image/note_info.svg"
                    message: "1. Перед запуском выключите приложения, они могут мешать.
2. Активируйте автономный или беззвучный режим.Если Вам позвонят, вы не сможете принять или отклонить звонок.
3. Используйте программу не чаще 1-2 раза в месяц или перед предстоящим обновлением системы.
4.Резервную папку (BackupFiles) можно сохранить в другое место на случчай непредвиденных обстоятельств.
5. Если есть вопросы или хотите восстановить что-то отдельно, напишите об этом http://vk.com/anastasiya_zamoshnikova"
                    acceptButtonText: "Ok"
                }
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
                    <b>3.2</b>
                    <ul>
                    <li>Оптимизация</li>
                    </ul>
                    </html>"
                                }
                    Label {
                        width: parent.width
                        wrapMode: Text.WordWrap
                        textFormat: Text.RichText
                        text: "<html>
                    <b>3.1</b>
                    <ul>
                    <li>Apps keeper</li>
<li>Gravity</li>
<li>Navitel</li>
<li>Touchbalance</li>
<li>Safemanager</li>
                    </ul>
                    </html>"
                                }
                    Label {
                        width: parent.width
                        wrapMode: Text.WordWrap
                        textFormat: Text.RichText
                        text: "<html>
                    <b>3.0</b>
                    <ul>
                    <li>Новые иконки</li>
<li>Навигация Nokia (Настройки, сохраненные места, журнал поиска)</li>
<li>2Gis</li>
<li>CuteTube</li>
<li>Davi</li>
<li>eBookReader (Добавлена библиотека)</li>
<li>qooMail</li>
<li>ZxReader (добавлена библиотека)</li>
<li>Счетчик пакетных данных</li>
<li>Счетчики длительности разговоров (Журнал/Длительность)</li>
<li>Настройки стандартного браузера</li>
<li>Быстрый набор</li>
<li>База Т9</li>
<li>Исправлены ошибки</li>
<li>Незначительные изменения, в связи с появлением SaveRestGames.</li>
<li>Небольшое сокращение времени работы</li>
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

