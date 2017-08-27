import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Rectangle {
    width: 250; height: 175
    GroupBox{
            ListView {
                id: listView
                x: 0
                y: 0
                width: 110
                height: 160
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
                        spacing: 10
                    }
                    MouseArea {
                                anchors.fill: parent
                                onClicked: listView.currentIndex = index
                    }
                }
            }

        Text {
            id: helloText
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: listView.currentIndex
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
