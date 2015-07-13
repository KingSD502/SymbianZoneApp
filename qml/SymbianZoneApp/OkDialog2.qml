// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1

CommonDialog {
   id: root
   width: platformContentMaximumWidth
   titleText: "Инструкция"
   titleIcon: "image/note_info.svg"
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
               textFormat: Text.RichText
               color: "white"
               font.pixelSize: 13
               text: ""
           }
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
                     text: "Ок";
                     onClicked: {root.accept();}
                 }
                 Button {
                     text: "Совет"
                  onClicked: {informationDialog1.open();}
                  }
                }
         }
     }
   QueryDialog{
       id: informationDialog1
       titleText: "Советы"
       icon: "image/note_info.svg"
       message: "<ul type=1><li>Перед запуском выключите приложения, они могут мешать.</li>
<li>Активируйте автономный или беззвучный режим.Если Вам позвонят, вы не сможете принять или отклонить звонок.</li>
<li>Используйте программу не чаще 1-2 раза в месяц или перед предстоящим обновлением системы. </li>
<li>Резервную папку (BackupFiles) можно сохранить в другое место на случчай непредвиденных обстоятельств.</li>
<li>Если есть вопросы или хотите восстановить что-то отдельно, напишите об этом vk.com/anastasiya_zamoshnikova</li>
<br>
<br>
<br>"
       acceptButtonText: "Ok"
   }
}
