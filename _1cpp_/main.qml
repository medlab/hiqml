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

        Page {
            Label {
                text: qsTr("Patch Prepare Process:)")
                anchors.centerIn: parent
            }
        }

        MainPage {
        }

        Page {
            Label {
                text: qsTr("Many people to thank:)")
                anchors.centerIn: parent
            }
        }


    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Patch Preapre")
        }
        TabButton
        {
            text: qsTr("Main")
        }
        TabButton {
            text: qsTr("Thanks to")
        }
    }
}
