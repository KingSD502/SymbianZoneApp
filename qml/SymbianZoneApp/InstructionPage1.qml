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
                text: "<center><b><font size=15>Советы:</font></b></center>
<ul type=1><li>Перед запуском выключите все приложения, вы всё равно не сможете ими пользоваться во время работы программы.
<li>Резервирование может длиться несколько минут, включите <b>беззвучный</b> или <b>автономный режим</b>.
<li>Резервирование (Backup) достаточно производить 1 раз в две недели или перед серьезными изменениями в системе, будь это обновление или эксперименты.
Не нужно каждый день сохранять данные, от этого пользы будет не так много, как кажется.
Поберегите свой смартфон, многочисленная перезапись файлов вредна для памяти.
<li>Папка с резервом (BackupFiles) можно сохранить в другое место на случай непредвиденных обстоятельств с телефоном (флешка, компьютер)
<li>Если у Вас появились вопросы или затруднения, обратитесь к <center><br><a href=http://vk.com/anastasiya_zamoshnikova><font size=18>Anastasiya Zamoshnikova</font></a></center></li>
</ul>
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
                iconSource: ""
                onClicked: {}
            }
        }
    }
}

