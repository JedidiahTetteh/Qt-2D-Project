/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import JedDemo

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    visible: true
    color: "#fbfbfb"
    layer.enabled: false
    antialiasing: false
    smooth: true
    enabled: true

    MyMainViewRectangle {
        id: mainViewRectangle
        visible: true
        color: "#ecf2f7"
        anchors.leftMargin: 100
    }

    Item {
        id: roundButtonItem
        x: 1183
        y: 198
        width: 445
        height: 102
        anchors.leftMargin: 100

        RoundButton {
            id: spaceRoundButton
            x: 187
            width: 144
            height: 50
            text: "Space"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.leftMargin: 100
            autoExclusive: true
            checkable: true
            anchors.rightMargin: 40
            font.bold: true
            font.pointSize: 16
        }

        RoundButton {
            id: lagoonRoundButton
            width: 144
            height: 50
            text: "Lagoon"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            autoExclusive: true
            checkable: true
            anchors.leftMargin: 100
            font.bold: true
            font.pointSize: 16
        }
    }


    Item {
        id: radioButtonItem
        x: 1194
        y: 354
        width: 429
        height: 200
        visible: lagoonRoundButton.checked || spaceRoundButton.checked
        anchors.leftMargin: 100

        Image {
            id: catPreviewImage
            y: 123
            width: 71
            height: 59
            anchors.left: parent.left
            source: "images/cat.png"
            anchors.leftMargin: 100
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: alienPreviewImage
            y: 13
            width: 71
            height: 59
            anchors.left: parent.left
            source: "images/alien.png"
            anchors.leftMargin: 100
            fillMode: Image.PreserveAspectFit
        }

        RadioButton {
            id: catRadioButton
            x: 241
            y: 133
            width: 111
            height: 39
            text: qsTr("Cat ")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 100
            anchors.bottomMargin: 30
            anchors.rightMargin: 120
            font.bold: true
            font.pointSize: 16
        }

        RadioButton {
            id: alienRadioButton
            x: 241
            width: 111
            height: 39
            text: qsTr("Alien ")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 100
            anchors.topMargin: 30
            anchors.rightMargin: 120
            font.pointSize: 16
            font.bold: true
        }
    }

    Item {
        id: glassesItem
        x: 1165
        y: 568
        width: 479
        height: 171
        visible: lagoonRoundButton.checked || spaceRoundButton.checked
        anchors.leftMargin: 100

        Image {
            id: sunglassesPreviewImage
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "images/sunglasses.png"
            anchors.bottomMargin: 37
            anchors.topMargin: 37
            anchors.leftMargin: 100
            fillMode: Image.PreserveAspectFit
        }

        Switch {
            id: glassSwitch
            x: 263
            text: qsTr("Sunglasses")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 100
            anchors.bottomMargin: 71
            anchors.topMargin: 60
            anchors.rightMargin: 70
            font.bold: true
            font.pointSize: 16
        }
    }
}
