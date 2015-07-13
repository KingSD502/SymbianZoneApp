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
            <b>Настройки сторонних программ:</b>
            <ul>
<li>100 отжиманий</li>
<li>150 Обратных скручиваний</li>
<li>200 скручиваний</li>
<li>200 приседаний</li>
<li>25 подтягиваний</li>
<li>2Gis</li>
<li>Access Apps</li>
<li>ALON MP3 Dictaphone</li>
<li>AndroMenu</li>
<li>AudioRecPro</li>
<li>AppsKeeper</li>
<li>Barbell Pro</li>
<li>BayanICQ (настройки)</li>
<li>BelleExtraButtons</li>
<li>Bicycle Computer</li>
<li>BoldBeastRecorder</li>
<li>CameraPro</li>
<li>ChaosControl</li>
<li>CheckList</li>
<li>ConnectivityAnalyzer</li>
<li>CutePhone</li>
<li>CuteTube</li>
<li>Davi</li>
<li>DoubleWaves</li>
<li>Dukto</li>
<li>dUnlock</li>
<li>DzMusicKey</li>
<li>EbookReader (Настройки)</li>
<li>Eight</li>
<li>EmiNes</li>
<li>EmiGens</li>
<li>EmiGens+</li>
<li>Energi Profile</li>
<li>FastMotion</li>
<li>FBReader</li>
<li>Files Plus</li>
<li>Full Screen Message</li>
<li>Gravity</li>
<li>HandyBlackList</li>
<li>HDRPhotoCamera</li>
<li>ICQ Mobile</li>
<li>JbakTaskMan </li>
<li>JukeBox</li>
<li>Meerun</li>
<li>MiniBrowser</li>
<li>MobileAgent</li>
<li>MyExplorer</li>
<li>Navitel</li>
<li>NsrReader</li>
<li>OperaMini</li>
<li>OperaMobile</li>
<li>PuTTY</li>
<li>Qoo приложения</li>
<li>Qnote</li>
<li>QuickApp</li>
<li>QuickLang</li>
<li><li>QuickLog</li>
<li>QuickSnaps</li>
<li>QRemoteControl</li>
<li>Remote multi Drive</li>
<li>RescoPhViewer</li>
<li>RescoPhotoViewer</li>
<li>SafeManager</li>
<li>ScreenLock</li>
<li><li>SmartMovie</li>
<li>SmartNotes</li>
<li>SPB Mobile Shell</li>
<li>SPB Shell 3D</li>
<li>Sports Tracker</li>
<li>SymDRV</li>
<li>Sym FTP</li>
<li>Swipe Unlock</li>
<li>Swype (только словарь)</li>
<li>Tap2menu</li>
<li>Tap2Screen</li>
<li>Thread sms</li>
<li>TotalRecall</li>
<li>TouchBalance</li>
<li>TouchFX</li>
<li>TTPOD</li>
<li>Tweaks (плагины)</li>
<li>VoxTrack</li>
<li>X-plore</li>
<li>ZDclock</li>
<li>ZXReader2 (настройки) </li>
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
