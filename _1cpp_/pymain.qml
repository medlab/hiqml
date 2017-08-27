import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import PyMVVM 1.0

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")

/*
    MainVm{
        id: mainVm
    }
*/
    SwipeView {
        id: swipeView
        anchors.fill: parent
        //currentIndex: tabBar.currentIndex
        currentIndex: MainVm.activeTab
        Page {
            Label {
                text: qsTr("Patch Prepare Process:)")
                anchors.centerIn: parent
            }
        }

        MainPage {
//            isDectected: mainVm.isDectected
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
        //currentIndex: swipeView.currentIndex
        currentIndex: MainVm.activeTab
        TabButton {
            text: qsTr("Patch Preapre")
        }
        TabButton
        {
            text: qsTr("Main")
        }
        TabButton {
            //text: qsTr("Thanks to")
            text: MainVm.name
        }
    }
}