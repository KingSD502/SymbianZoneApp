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
                color: "#393c01"
            }
            GradientStop {
                position: 0.25
                color: "#4a4d00"
            }
            GradientStop {
                position: 0.37
                color: "#5c5f01"
            }
            GradientStop {
                position: 0.50
                color: "#6c7001"
            }
            GradientStop {
                position: 0.62
                color: "#7e8302"
            }
            GradientStop {
                position: 0.75
                color: "#8e9302"
            }
            GradientStop {
                position: 0.87
                color: "#999e02"
            }
            GradientStop {
                position: 1
                color: "#aeb502"
            }
        }
    }
    anchors.fill: parent
    signal back;
    signal about;
    signal updatePage;
    signal backupPage;
    signal restorePage;
    signal savegamePage;
    signal restoregamePage;
    signal helpPage;
    signal helpPage1;
    signal appPage;
    orientationLock: PageOrientation.LockPortrait

 // define a tab bar with three buttons and link them to the content
         TabBar {
             id: tabBar
             anchors { left: parent.left; right: parent.right; top: parent.top }
             TabButton { tab: tab1content; text: "Инфо"}
             TabButton { tab: tab2content; text: "Что нового"}
         }
         // define a blank tab group so we can add the pages of content later
         TabGroup {
             id: tabGroup
             anchors { left: parent.left; right: parent.right; top: tabBar.bottom; bottom: parent.bottom }

             // define the content for tab 1
             Page {
                 id: tab1content
                 Rectangle {
                     id: background1
                     x: 0
                     y: 0
                     width: 640
                     height: 640
                     gradient: Gradient {
                         GradientStop {
                             position: 0
                             color: "#320100"
                         }
                         GradientStop {
                             position: 0.25
                             color: "#400001"
                         }
                         GradientStop {
                             position: 0.37
                             color: "#510102"
                         }
                         GradientStop {
                             position: 0.50
                             color: "#600201"
                         }
                         GradientStop {
                             position: 0.62
                             color: "#720202"
                         }
                         GradientStop {
                             position: 0.75
                             color: "#830202"
                         }
                         GradientStop {
                             position: 0.87
                             color: "#910202"
                         }
                         GradientStop {
                             position: 1
                             color: "#a10303"
                         }
                     }
                 }
                 Flickable {
                     id: flickArea
                     anchors.fill: parent
                     anchors.top: statusBar.bottom;
                     anchors.bottom: toolBar.top;
                     anchors.left: parent.left;
                     anchors.right: parent.right
                     contentWidth: parent.width; contentHeight: c.height
                     flickableDirection: Flickable.VerticalFlick
                     clip: true
                     Column{
                         id:c
                         spacing: 5;
                         anchors.top: statusBar.bottom;
                         anchors.bottom: toolBar.top;
                         anchors.left: parent.left;
                         anchors.right: parent.right
                         anchors.topMargin: 10;
                         anchors.verticalCenter: parent.verticalCenter
                         Image {
                             anchors.horizontalCenter: parent.horizontalCenter
                             id: logo
                             source: "image/logo.svg"
                             width: 150; height: 150;
                             sourceSize.width: 150;
                             sourceSize.height: 150;
                             MouseArea{
                                 anchors.fill: parent
                             }
                         }
                         Text{
                             text:"Symbian Zone App 1.2";
                             color:"white"
                             anchors.horizontalCenter: parent.horizontalCenter
                             horizontalAlignment: Text.AlignHCenter;
                             anchors.left: parent.left;
                             anchors.right: parent.right
                             font.pixelSize: 27;
                             wrapMode: Text.WordWrap
                         }
                         Text{
                             text:"Разработчики: Даниил Стулов<br>
             Twitter: <a href=http://twitter.com/kingsd502>@kingsd502</a><br>
             VK: <a href=http://vk.com/kingsd502>http://vk.com/kingsd502</a><br>
             Anastasiya Zamoshnikova<br>
             VK: <a href=http://vk.com/anastasiya_zamoshnikova>http://vk.com/anastasiya_zamoshnikova</a><br>
             Артём Кучеренко<br>
             VK: <a href=http://vk.com/id118905620>http://vk.com/id118905620</a><br>
             <br>
             Специально для Symbian Zone<br>
             <a href=http://vk.com/symbian_zone>http://vk.com/symbian_zone</a>
<br>
<br>
<br>";
                             color:"white"
                             onLinkActivated: Qt.openUrlExternally(link);
                             textFormat: Text.RichText
                             anchors.horizontalCenter: parent.horizontalCenter
                             horizontalAlignment: Text.AlignHCenter;
                             anchors.left: parent.left;
                             anchors.right: parent.right
                             font.pixelSize: 22;
                             wrapMode: Text.WordWrap
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
                     contentWidth: parent.width; contentHeight: c1.height
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
                         Text {
                           id: title
                           color: "#ffffff"
                           text: "Что нового"
                           font.pixelSize: 25
                           font.bold: true
                           anchors.leftMargin: 5
                           anchors.left: parent.left
                       }
                         Image {
                             anchors.horizontalCenter: parent.horizontalCenter
                             id: logo1
                             source: "image/Update.svg"
                             width: 100; height: 100;
                             sourceSize.width: 100;
                             sourceSize.height: 100;
                             MouseArea{
                                 anchors.fill: parent
                             }
                         }
                         Label {
                             x: 10
                           //width: parent.width
                             wrapMode: Text.WordWrap
                             textFormat: Text.RichText
                             text: "<html>
                         <b>1.2:</b>
                         <ul>
                         <li>Оптимизация</li>
                         <li>Небольшое сокращение времени<br> работы</li>
                         <li>Исправлены незначительные<br> ошибки</li>
                         </ul>
                         </html>"
                                     }
                         Label {
                             x: 10
                           //width: parent.width
                             wrapMode: Text.WordWrap
                             textFormat: Text.RichText
                             text: "<html>
                         <b>1.1:</b>
                         <ul>
                         <li>Исправлены ошибки</li>
                         <li>SaveGameRestore обновлен до<br>версии 1.3</li>
                         <li>Обновлен принцеп <br>восстановления:
                         </ul>
                         </html>"
                                     }
                         Button{
                             anchors.horizontalCenter: parent.horizontalCenter
                             width: mainPage.width * 0.3
                             text: "?"
                             onClicked: {informationDialog.open();}
                         }
                         Label {
                             x: 10
                           //width: parent.width
                             wrapMode: Text.WordWrap
                             textFormat: Text.RichText
                             text: "<html>
                         <b>1.0:</b>
                         <ul>
                         <li>Релиз</li>
                         </ul>
                         </html>
<br>
<br>
<br>
<br>"
                                     }

                     }
                 }
    }
}
         QueryDialog{
             id: informationDialog

             platformInverted: toolBar.platformInverted

             titleText: "Информация"
             icon: "image/note_info.svg"
             message: "Программа сама определяет на какой диск установлена программа/игра и восстанавливает именно на тот диск на который установлена программа/игра.
Теперь не надо запоминать на какой диск была установлена до этого программа/игра."

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
                onClicked: {back();}
            }
            ToolButton {
                flat: true
                iconSource: "image/VK1.png"
                onClicked: {Qt.openUrlExternally("http://vk.com/symbian_zone");}
            }
            ToolButton {
                flat: true
                id:aboutbtn;
                iconSource: ""
                onClicked: {}
            }
        }
    }
}

