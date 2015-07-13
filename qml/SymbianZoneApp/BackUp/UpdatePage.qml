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
  //....
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
              text: "Что нового"
              font.pixelSize: 25
              font.bold: true
              anchors.leftMargin: 5
              anchors.left: parent.left
          }
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
                x: 10
              //width: parent.width
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                text: "<html>
            <b>1.0:</b>
            <ul>
            <li>
            Релиз
            </li>
            </ul>
            </html>"
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
                onClicked: {Qt.openUrlExternally("http://vk.com/symbian_zone/");}
        }
            ToolButton {
                flat: true
                iconSource: ""
                onClicked: {}
            }
        }
    }
}
