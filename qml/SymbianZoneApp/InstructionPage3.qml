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
    signal backupPage;
    orientationLock: PageOrientation.LockPortrait
    //....
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
            spacing: 15;
            anchors.top: statusBar.bottom;
            anchors.bottom: toolBar.top;
            anchors.left: parent.left;
            anchors.right: parent.right
            anchors.topMargin: 20;
            anchors.verticalCenter: parent.verticalCenter
            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                id: logo
                source: "image/note.svg"
                width: 100; height: 100;
                sourceSize.width: 100;
                sourceSize.height: 100;
                MouseArea{
                    anchors.fill: parent
                }
            }
            Text {
                width: parent.width
                color:"white"
                anchors.left: parent.left
                anchors.leftMargin: 10;
                anchors.right: parent.right
                anchors.rightMargin: 10;
                font.pixelSize: 18;
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                text: "После нажатия на Резервная копия  появятся точки загрузки.
<b>Не бойтесь и не трогайте телефон, просто ждите.</b><br>
<center>ВРЕМЯ РАБОТЫ:</center>
Время резервирования и восстановления у каждого своё.
На время и объем резерва сильно влияют:
<ul><li>Сообщения</li>
<li>Кэш браузеров</li>
<li>Количество сторонних приложений, с которыми работает программа</li></ul>
<center>РЕЗЕРВ</center>
Резерв настроек хранится в папке <b>BackupFiles > Software</b>
<center>(E:\BackupFiles\Software)</center>
<br>
<center>Резервная папка может быть удалена по трём причинам:<center>
<ul type=1><li>Кодовый хард ресет (*#7370#).</li>
<li>Лично Вами вручную.</li>
<li>Форматирование диска E.</li></ul>
"
            }
            Text {
                width: parent.width
                color:"white"
                anchors.left: parent.left
                anchors.leftMargin: 10;
                anchors.right: parent.right
                anchors.rightMargin: 10;
                font.pixelSize: 18;
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                onLinkActivated: Qt.openUrlExternally(link);
                text: "<center><b>Как убедиться, что программа меня не подведет?</b></center>
<ul type=1><li>Создайте резервную копию (Backup)</li>
<li>Внесите любые незначительные для Вас изменения в любых настройках и приложениях, с которыми работает программа. Например, создайте или удалите контакт, СМС, заметки...</li>
<li>Произведите восстановление (Restore)</li>
<br>
<center>! В случае неудачи, срочно сообщить<br><a href=http://vk.com/anastasiya_zamoshnikova><font size=18>Anastasiya Zamoshnikova</font></a></center>
<br>
<br>
<br>"
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
                text: ""
                onClicked: {}
            }
        }
    }
}

