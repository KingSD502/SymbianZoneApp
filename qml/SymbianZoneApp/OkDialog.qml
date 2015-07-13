// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1

CommonDialog {
   id: root
   width: platformContentMaximumWidth
   titleText: "Внимание!"
   titleIcon: "image/warning.svg"
   property alias helpText: txt.text
   content:Item {
       height: c.height+10
       width: platformContentMaximumWidth
       Column{
           spacing: 10;
           anchors.left: parent.left;
           anchors.right: parent.right
           anchors.leftMargin: 15;
           anchors.rightMargin: 15;
           id: c;
           anchors.top: parent.top
           anchors.topMargin: 10;
           Text {
               id: txt
               anchors.horizontalCenter: parent.horizontalCenter
               width: parent.width
               horizontalAlignment: Text.AlignJustify
               wrapMode: Text.WordWrap;
               color: "white"
               font.pixelSize: 16
               text: ""
           }
           /*Button{
               anchors.horizontalCenter: parent.horizontalCenter
               anchors.bottom: parent.bottom;
               //anchors.bottomMargin: 5;
               anchors.left: parent.left
               anchors.leftMargin: 40;
               anchors.right: parent.right
               anchors.rightMargin: 40
               text: "ROMPather+"
               width: root.width/2;
               onClicked: {root.accept();application.launch("0x20047b9f");application.launch("0x2006cab0");}
           }*/
           ButtonRow {
                 id:b
                 exclusive: false
                 checkedButton: root
                 anchors.horizontalCenter: parent.horizontalCenter
                 anchors.bottom: parent.bottom;
                 //anchors.bottomMargin: 5;
                 anchors.left: parent.left
                 anchors.leftMargin: 40;
                 anchors.right: parent.right
                 anchors.rightMargin: 40
                 Button {
                     text: "Да";
                     onClicked: {application.launch("0x20047b9f");application.launch("0x2006cab0");
                 root.accept();}
                 }
                 Button {
                     text: "Нет"
                  onClicked: root.accept();}
                  }
                }
         }
     }
