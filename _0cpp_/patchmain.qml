import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        anchors.margins: 5
        PatchPage {
        }

//        Page {
//            Label {
//                text: qsTr("Second page")
//                anchors.centerIn: parent
//            }
//        }
    }

    footer: TabBar {
//        anchors.rightMargin: 3
//        anchors.leftMargin: 3
//        anchors.bottomMargin: 2
//        anchors.topMargin: 2
        id: tabBar
        currentIndex: swipeView.currentIndex
//        TabButton {
//            text: qsTr("First")
//        }
//        TabButton {
//            text: qsTr("Second")
//        }
        TabButton
        {
            text: qsTr("Main")
        }
    }
}
