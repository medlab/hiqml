import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Item {

    GridLayout {
        id: grid
        anchors.fill: parent
        rows: 2
        columns: 2

        property double colMulti: grid.width / grid.columns
        property double rowMulti: grid.height / grid.rows

        //        anchors.rightMargin: -420
        //        anchors.bottomMargin: -222

        //        function prefWidth(item){
        //            return colMulti * item.Layout.columnSpan
        //        }
        //        function prefHeight(item){
        //            return rowMulti * item.Layout.rowSpan
        //        }
        GroupBox {
            id: groupBox2
            antialiasing: false
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            //            Layout.fillHeight: true
            //            Layout.fillWidth: true
            Layout.preferredHeight: grid.height / grid.rows * Layout.rowSpan
            Layout.preferredWidth: grid.width / grid.columns * Layout.columnSpan
            Layout.row: 1
            Layout.column: 1
            title: qsTr("Patch List")

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
                }
            }
        }

        GroupBox {
            id: groupBox1
            //            width: 200
            //            height: 200
            Layout.row: 2
            Layout.column: 1
            Layout.preferredHeight: grid.height / grid.rows * Layout.rowSpan
            Layout.preferredWidth: grid.width / grid.columns * Layout.columnSpan
            title: qsTr("BackUp List:")

            ListView {
                id: listView1
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
                        id: row2
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
                }
            }
        }
/*
        Switch {
            id: switch1
            Layout.row: 1
            Layout.column: 2
            text: qsTr("Switch")
            enabled: true
        }
*/
        GroupBox {
            id: groupBox4
            ListView {
                id: listView3
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
                        id: row4
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
                }
            }
            Layout.preferredWidth: grid.width / grid.columns * Layout.columnSpan
            Layout.column: 2
            Layout.preferredHeight: grid.height / grid.rows * Layout.rowSpan
            Layout.row: 1
            title: qsTr("BackUp List:")
        }

        GroupBox {
            id: groupBox3
            ListView {
                id: listView2
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
                        id: row3
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
                }
            }
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.preferredWidth: grid.width / grid.columns * Layout.columnSpan
            Layout.column: 2
            Layout.preferredHeight: grid.height / grid.rows * Layout.rowSpan
            antialiasing: false
            Layout.row: 2
            title: qsTr("Patch List")
        }
    }
}
