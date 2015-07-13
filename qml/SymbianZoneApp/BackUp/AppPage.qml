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
                color: "#2f2f30"
            }
            GradientStop {
                position: 0.25
                color: "#3d3d3d"
            }
            GradientStop {
                position: 0.37
                color: "#484848"
            }
            GradientStop {
                position: 0.50
                color: "#565555"
            }
            GradientStop {
                position: 0.62
                color: "#626162"
            }
            GradientStop {
                position: 0.75
                color: "#706f70"
            }
            GradientStop {
                position: 0.87
                color: "#7d7d7d"
            }
            GradientStop {
                position: 1
                color: "#8c8c8c"
            }
        }
    }
  signal back;
    Connections{
            target: application
            onSetToggle1:{ sw.checked=newstate;
                           //sw1.checked=newstate;
                           //sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle2:{ //sw.checked=newstate;
                           sw1.checked=newstate;
                           //sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle3:{ //sw.checked=newstate;
                           //sw1.checked=newstate;
                           sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle4:{ //sw.checked=newstate;
                           //sw1.checked=newstate;
                           //sw2.checked=newstate;
                           sw3.checked=newstate;}
            onSetToggle1Check:{ console.log("QML function called!");
                           sw.checked=newstate;
                           //sw1.checked=newstate;
                           //sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle2Check:{ //sw.checked=newstate;
                           sw1.checked=newstate;
                           //sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle3Check:{ //sw.checked=newstate;
                           //sw1.checked=newstate;
                           sw2.checked=newstate;
                           //sw3.checked=newstate;
            }
            onSetToggle4Check:{ //sw.checked=newstate;
                           //sw1.checked=newstate;
                           //sw2.checked=newstate;
                           sw3.checked=newstate;}
        }
    Flickable{
        id:flick
        //anchors.fill: parent
        anchors.top: statusBar.bottom;
        anchors.bottom: toolBar.top;
        //anchors.bottomMargin: 5
        anchors.left: parent.left;
        anchors.right: parent.right
        contentWidth: parent.width; contentHeight: c.height
        flickableDirection: Flickable.VerticalFlick
        clip: true
        Column{
            id:c;
            spacing: 20;
            anchors.left: parent.left;
            anchors.right: parent.right
            //anchors.verticalCenter: parent.verticalCenter
            Text {
              id: title
              color: "#ffffff"
              text: "Настройки"
              font.pixelSize: 25
              font.bold: true
              anchors.leftMargin: 5
              anchors.left: parent.left
          }
                /*Text {
                  color: "#ffffff"
                  text: "Выключите переключатели приложений, которые надо скрыть из меню:"
                  font.pixelSize: 15
                  font.bold: true
                  anchors.leftMargin: 5
                  anchors.left: parent.left
                  wrapMode: Text.WordWrap
                  textFormat: Text.RichText
              }*/
                Text{
                    text:"Включите переключатели приложений, которые надо скрыть из меню:<br>";
                    color:"white"
                    textFormat: Text.RichText
                    horizontalAlignment: Text.AlignHCenter;
                    anchors.leftMargin: 5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.pixelSize: 18;
                    wrapMode: Text.WordWrap
                }
            Item{
                id:delegate
                width: c.width
                height: Math.max(icon.height,apptxt.height);
            Image {
                asynchronous:true
                id: icon
                height: 50
                width: height
                anchors.left: parent.left
                anchors.leftMargin: 10;
                source: "image/BackUp.svg";
            }
                 Text {
                      id: apptxt
                      anchors.left: icon.right
                      anchors.right: sw.left
                      anchors.leftMargin: 10
                      color:"white"
                      wrapMode: Text.WordWrap;
                      text: sw.checked ? "Иконка Backup скрыта" : "Иконка Backup видна"
                      font.pixelSize: sw.height*0.4
                      anchors.verticalCenter: icon.verticalCenter
                        }
                        Switch{
                            id:sw
                            anchors.right: parent.right
                            anchors.rightMargin: 10;
                            onClicked: {application.updateSetting(sw.checked,sw1.checked,sw2.checked,sw3.checked);
                                application.checkSetting(sw.checked);
                            }
                       }
            }
            Item{
                id:delegate1
                width: c.width
                height: Math.max(icon1.height,apptxt1.height);
                        Image {
                            asynchronous:true
                            id: icon1
                            height: 50
                            width: height
                            anchors.left: parent.left
                            anchors.leftMargin: 10;
                            source: "image/Restore.svg";

                        }
                        Text {
                            id: apptxt1
                            anchors.left: icon1.right
                            anchors.right: sw1.left
                            anchors.leftMargin: 10
                            color:"white"
                            wrapMode: Text.WordWrap;
                            text: sw1.checked ? "Иконка Restore скрыта" : "Иконка Restore видна"
                            font.pixelSize: sw1.height*0.4
                            anchors.verticalCenter: icon1.verticalCenter
                         }
                        Switch{
                            id:sw1
                            property int click: 0
                            anchors.right: parent.right
                            anchors.rightMargin: 10;
                            anchors.verticalCenter: icon1.verticalCenter
                            onClicked: {application.updateSetting(sw.checked,sw1.checked,sw2.checked,sw3.checked);}
                                    }
            }
            Item{
                id:delegate2
                width: c.width
                height: Math.max(icon2.height,apptxt2.height);
                        Image {
                            asynchronous:true
                            id: icon2
                            height: 50
                            width: height
                            anchors.left: parent.left
                            anchors.leftMargin: 10;
                            source: "image/SaveGames.svg";
                            }
                        Text {
                            id: apptxt2
                            anchors.left: icon2.right
                            anchors.right: sw2.left
                            anchors.leftMargin: 10
                            color:"white"
                            wrapMode: Text.WordWrap;
                            text: sw2.checked ? "Иконка SaveGames скрыта" : "Иконка SaveGames видна"
                            font.pixelSize: sw2.height*0.4
                            anchors.verticalCenter: icon2.verticalCenter
                            }
                        Switch{
                            id:sw2
                            property int click: 0
                            anchors.right: parent.right
                            anchors.rightMargin: 10;
                            anchors.verticalCenter: icon2.verticalCenter
                            onClicked: {application.updateSetting(sw.checked,sw1.checked,sw2.checked,sw3.checked);}
                            }
                          }
            Item{
                id:delegate3
                width: c.width
                height: Math.max(icon3.height,apptxt3.height);
                        Image {
                            asynchronous:true
                            id: icon3
                            height: 50
                            width: height
                            anchors.left: parent.left
                            anchors.leftMargin: 10;
                            source: "image/RestGame.svg";
                            }
                        Text {
                            id: apptxt3
                            anchors.left: icon3.right
                            anchors.right: sw3.left
                            anchors.leftMargin: 10
                            color:"white"
                            wrapMode: Text.WordWrap;
                            text: sw3.checked ? "Иконка RestGame скрыта" : "Иконка RestGame видна"
                            font.pixelSize: sw3.height*0.4
                            anchors.verticalCenter: icon3.verticalCenter
                            }
                        Switch{
                            id:sw3
                            property int click: 0
                            anchors.right: parent.right
                            anchors.rightMargin: 10;
                            anchors.verticalCenter: icon3.verticalCenter
                            onClicked: {application.updateSetting(sw.checked,sw1.checked,sw2.checked,sw3.checked);}
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
