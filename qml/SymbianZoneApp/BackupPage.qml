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
                color: "#002928"
            }
            GradientStop {
                position: 0.25
                color: "#003e3d"
            }
            GradientStop {
                position: 0.37
                color: "#004d4c"
            }
            GradientStop {
                position: 0.50
                color: "#005e5d"
            }
            GradientStop {
                position: 0.62
                color: "#006f6e"
            }
            GradientStop {
                position: 0.75
                color: "#008381"
            }
            GradientStop {
                position: 0.87
                color: "#009291"
            }
            GradientStop {
                position: 1
                color: "#00a2a0"
            }
        }
    }
    signal back;
    signal instructionPage3;
    signal selectionbackupPage;
    orientationLock: PageOrientation.LockPortrait
    Flickable {
        id: flickArea
        //anchors.fill: parent
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
            anchors.topMargin: 20;
            anchors.verticalCenter: parent.verticalCenter
    Text {
      id: title
      color: "#ffffff"
      text: "Резервная копия"
      font.pixelSize: 25
      font.bold: true
      anchors.leftMargin: 5
      anchors.left: parent.left
  }
    Image {
        anchors.horizontalCenter: parent.horizontalCenter
        id: logo
        source: "image/BackUp.svg"
        width: 100; height: 100;
        sourceSize.width: 100;
        sourceSize.height: 100;
        MouseArea{
            anchors.fill: parent
        }
    }
        }
  Button {
      y: 250
      anchors.horizontalCenter: parent.horizontalCenter
      width: mainPage.width * 0.70
      height: mainPage.width * 0.30
      text: "Резервная копия"
      iconSource: "image/BackUp1.svg"
      onClicked: {application.launch("0xE132DCB7");}
     }
  Button {
      y: 490
      anchors.right: parent.right
      anchors.rightMargin: 25;
      anchors.horizontalCenter: parent.horizontalCenter
      width: mainPage.width * 0.30
      height: mainPage.width * 0.15
      text: "Инструкция"
      onClicked: {rootDialog.open();}
     }
    }
    Image {
        id: statusBar
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
                   iconSource: ""
                   onClicked: {}
               }
           }
    }
    OkDialog2{
            id:rootDialog;
            helpText: "При запуске появится уведомление и загрузочный экран.
<b>Процедура долгая, просто ждите. Резервная копия и восстановление в категории Программы приводит к перезагрузке.</b><br>
<center>Время работы примерно 3-10 минут.</center>
Всё зависит от количества Ваших установленных программ/игр.
Значительно влияют сообщения и данные браузеров.
<center>РЕЗЕРВ</center>
Резерв настроек хранится в папке <b>BackupFiles > Software</b>
<center>(E:/BackupFiles/Software)</center>
<br>
<center>ак убедиться, что программа не подведёт?<center>
<ul type=1><li>Создаем резервную копию.</li>
<li>Вносим незначительные изменения в настройках смартфона или программ.
Так же можно создать заметку или удалить СМС.</li>
<li>Производим восстановление и убеждаемся, что всё вернулось на место.</li></ul>"
        }
}
