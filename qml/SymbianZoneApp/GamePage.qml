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
            <b>Игры:</b>
            <ul>
<li>2048</li>
<li>4 Фото 1 Слово</li>
<li>Слова</li>
<li>Слова2</li>
<li>AngryBirds</li>
<li>AngryBirds RIO</li>
<li>AngryBirds Seasons</li>
<li>Armageddon Squadron</li>
<li>Asphalt 5</li>
<li>Asphalt 6 Adrenaline</li>
<li>Assassin Creed</li>
<li>Avatar</li>
<li>Azkend</li>
<li>Azkend2</li>
<li>BackBreaker</li>
<li>BallRushAqua</li>
<li>Breakfest</li>
<li>Buggy Coaster</li>
<li>CleverDriver</li>
<li>ContreJour</li>
<li>Copter It</li>
<li>Coube Touch</li>
<li>CrusadeOfDestiny</li>
<li>Cut the rope</li>
<li>Dalton</li>
<li>Dalton - The Awesome Reloaded</li>
<li>Downfall</li>
<li>Dungeon Hunter 2 HD</li>
<li>Eternal Legacy</li>
<li>FarmFrenzy2</li>
<li>Fish Farm Havaii</li>
<li>FlappyBird</li>
<li>Fragger</li>
<li>FruitNinja</li>
<li>GalaxyOneFire</li>
<li>Gears</li>
<li>Gеt me Out</li>
<li>GT Racing Motor Academy</li>
<li>Guitar Rocktour 2</li>
<li>Gravity Guy</li>
<li>Hero of Sparta</li>
<li>Hockey Nations</li>
<li>iBomberDefence</li>
<li>iStunt2</li>
<li>JetEx</li>
<li>JetEx2</li>
<li>JetEx2 Balance</li>
<li>Jetex Freeride</li>
<li>Jetex BombSaway2</li>
<li>KingOddball</li>
<li>Lafix2</li>
<li>LetsGolf</li>
<li>LetsGolf2</li>
<li>Marble Maze Speed</li>
<li>MicroMaze</li>
<li>Monster Pinball</li>
<li>MotocrossMasters</li>
<li>NeonMania</li>
<li>NFS Shift HD</li>
<li>PES 2011</li>
<li>Powerboat Challenge</li>
<li>Prince Of Persia HD</li>
<li>Protoxide</li>
<li>RagingThunder</li>
<li>RagingThunder2</li>
<li>Rally Master Pro</li>
<li>RedBullXFighters</li>
<li>Save The Kitty</li>
<li>SkyForce</li>
<li>SkyForce Reloaded</li>
<li>Slam Dunk Basketball</li>
<li>Slice Ice</li>
<li>Sparkle</li>
<li>Sparkle2</li>
<li>SPB BraiEvolution</li>
<li>Speedfest</li>
<li>SpeedX</li>
<li>SpiderMan</li>
<li>ShrekKart</li>
<li>TankHero</li>
<li>The Sims 3 HD</li>
<li>Tin-Tin</li>
<li>Tom Clancy's HAWX HD</li>
<li>Toy Tanks</li>
<li>Transformers</li>
<li>Tron</li>
<li>TronHockey</li>
<li>Turbo Grannies</li></li>
<li>Ultimate Alien Pinball</li>
<li>Ultimate Soccer Pinball</li>
<li>Unblockme</li>
<li>Undroid</li>
<li>Undroid2</li>
<li>VehicleTraffic</li>
<li>VehicleTrafficExtreme</li>
<li>Virtual Table Tennis 3D</li>
<li>Wave Blazer</li>
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
