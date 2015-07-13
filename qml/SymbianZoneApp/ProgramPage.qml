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
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                text: "<html>
            <b>Настройки смартфона:</b>
            <ul>
<li>Контакты + миниатюры для качественного отображения</li>
<li>Журнал звонков (Входящие, Исходящие, Непринятые)</li>
<li>Счетчики разговоров (Журнал/Длительность)</li>
<li>SMS и MMS</li>
<li>Календарь (Настройки, Дела, Встречи)</li>
<li>Заметки</li>
<li>Режимы</li>
<li>Часы и Будильники</li>
<li>Счетчик пакетных данных</li>
<li>Списки воспроизведения в стандартном музыкальном плеере</li>
<li>Настройки эквалайзера плеера (Родные и сторонние пресеты)</li>
<li>Точки доступа Wi-Fi и GPRS</li>
<li>Настройки родной почты</li>
<li>Карты Nokia (Настройки, сохраненные места, журнал поиска)</li>
<li>Bluetooth настройки и сопряженные устройства</li>
<li>Камера (Фото, Видео, пользовательский режим)</li>
<li>Иерархия и кинетика меню (Расположение иконок, скорость перемещения и т.д.)</li>
<li>Голосовые метки</li>
<li>Настройки стандартного браузера</li>
<li>Быстрый набор</li>
<li>Словарь Т9</li>
<li>Передать по радио/FM-трансмиттер (Имя и настройки волн)</li>
<li>Аксессуары (По умолчанию и настройки)</li>

и многие другие настройки смартфона
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
