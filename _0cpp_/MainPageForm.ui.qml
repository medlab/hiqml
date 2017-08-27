import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {

    //    property alias textField1: textField1
    //    property alias button1: button1
    Button {
        id: buttonRestore
        x: 889
        y: 505
        width: 76
        height: 32
        text: qsTr("Restore")
    }

    ListView {
        id: listViewPatch
        x: 29
        y: 57
        width: 430
        height: 448
        flickableDirection: Flickable.AutoFlickDirection
        Layout.fillHeight: true
        Layout.fillWidth: true
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
            }
        }
    }

    Label {
        id: lblPatchList
        x: 29
        y: 31
        text: qsTr("Patch List:")
    }

    TextArea {
        id: textAreaPatchContent
        x: 500
        y: 57
        width: 475
        height: 442
        text: qsTr("Text Area")
    }

    Label {
        id: lblPatchContent
        x: 500
        y: 31
        text: qsTr("Patch Content:")
    }

    Button {
        id: buttonApply
        x: 786
        y: 505
        width: 88
        height: 32
        text: qsTr("Apply")
        enabled: false
    }

    Label {
        id: labelLog
        x: 29
        y: 518
        text: qsTr("Logs:")
    }

    TextArea {
        id: textAreaLog
        x: 29
        y: 542
        width: 963
        height: 165
        text: qsTr("")
    }

    Label {
        id: labelStatus
        x: 510
        y: 511
        text: qsTr("Status:")
    }

    Label {
        id: labelStatusValues
        x: 569
        y: 511
        text: qsTr("n.a")
    }
}
