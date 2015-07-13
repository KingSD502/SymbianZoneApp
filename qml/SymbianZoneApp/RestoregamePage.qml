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
                color: "#2c0035"
            }
            GradientStop {
                position: 0.25
                color: "#360043"
            }
            GradientStop {
                position: 0.37
                color: "#440053"
            }
            GradientStop {
                position: 0.50
                color: "#520063"
            }
            GradientStop {
                position: 0.62
                color: "#5f0073"
            }
            GradientStop {
                position: 0.75
                color: "#6e0086"
            }
            GradientStop {
                position: 0.87
                color: "#7a0094"
            }
            GradientStop {
                position: 1
                color: "#8f00ad"
            }
        }
    }
    signal back;
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
      text: "Восстановить сохранения игр"
      font.pixelSize: 20
      font.bold: true
      anchors.leftMargin: 5
      anchors.left: parent.left
  }
    Image {
        anchors.horizontalCenter: parent.horizontalCenter
        id: logo
        source: "image/RestGame.svg"
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
      //anchors.verticalCenter: parent.verticalCenter
        width: mainPage.width * 0.70
        height: mainPage.width * 0.30
        text: "Восстановить"
        iconSource: "image/RestGame1.svg"
        onClicked: {application.launch("0xE132DCB2");}
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
}



