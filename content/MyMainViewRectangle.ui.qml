import QtQuick 6.2
import QtQuick.Controls 6.2
import JedDemo

Rectangle {
    id: mainViewRectangle
    width: 1022
    height: 628
    color: "#ffffff"
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    state: "default"
    anchors.leftMargin: 100

    Image {
        id: image
        visible: true
        anchors.fill: parent
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        fillMode: Image.PreserveAspectFit

        Image {
            id: suitImage
            x: 238
            y: 234
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            rotation: rotationSlider.value
            scale: zoomSlider.value
            fillMode: Image.PreserveAspectFit

            Image {
                id: alien
                x: 69
                y: 13
                width: 58
                height: 45
                visible: alienRadioButton.checked
                source: "images/alien.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: cat
                x: 69
                y: 13
                width: 58
                height: 45
                visible: catRadioButton.checked
                source: "images/cat.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sunglassImage
                x: 71
                y: 15
                width: 51
                height: 31
                visible: glassSwitch.checked
                source: "images/sunglasses.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Slider {
            id: zoomSlider
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: 10
            to: 2
            value: 1
        }

        Slider {
            id: rotationSlider
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.leftMargin: 0
            value: 0
            to: 360
            from: -360
        }
    }
    states: [
        State {
            name: "Lagoon"
            when: lagoonRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/lagoon.jpg"
            }

            PropertyChanges {
                target: suitImage
                x: 160
                y: 113
                width: 193
                height: 233
                source: "images/diver.png"
            }

            PropertyChanges {
                target: alien
                x: 69
                y: 22
                width: 44
                height: 36
            }

            PropertyChanges {
                target: cat
                x: 62
                y: 13
            }

            PropertyChanges {
                target: sunglassImage
                x: 62
                y: 22
            }
        },
        State {
            name: "Space"
            when: spaceRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/planet.png"
            }

            PropertyChanges {
                target: suitImage
                x: 238
                y: 234
                width: 207
                height: 282
                source: "images/spacesuit.png"
            }

            PropertyChanges {
                target: alien
                x: 69
                y: 36
            }

            PropertyChanges {
                target: cat
                x: 69
                y: 36
            }

            PropertyChanges {
                target: sunglassImage
                x: 73
                y: 43
            }
        },
        State {
            name: "default"
            when: !lagoonRoundButton.checked && spaceRoundButton.checked
        }
    ]
}
