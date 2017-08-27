import sys
from PyQt5.QtCore import QUrl, pyqtProperty, pyqtSignal, QObject, QVariant, QStringListModel
from PyQt5.QtWidgets import QApplication
from PyQt5.QtQuick import QQuickView
from PyQt5.QtQml import qmlRegisterType, qmlRegisterSingletonType, QQmlComponent, QQmlEngine

class MainVm(QObject):
    #propertyChanged=pyqtSignal(str, QVariant, bool)
    changed=pyqtSignal()

    def __init__(self, parent=None):
        super().__init__(parent)
        self._currentIndex=-1 #TODO -1?
        pass


    @pyqtProperty(int, notify=changed)
    def currentIndex(self):
        return self._currentIndex

    # Define the setter of the 'name' property.
    @currentIndex.setter
    def currentIndex(self, currentIndex):
        self._currentIndex= currentIndex
        self.changed.emit()
        pass
    pass

# Main Function
if __name__ == '__main__':
    t=MainVm()

    # Create main app
    myApp = QApplication(sys.argv)

    qmlRegisterSingletonType(MainVm, 'PyMVVM', 1, 0, 'MainVm', lambda x,y:  MainVm())

    # Create a label and set its properties
    appLabel = QQuickView()
    appLabel.setSource(QUrl('basic.qml'))

    # Show the Label
    appLabel.show()

    # Execute the Application and Exit
    myApp.exec_()
    sys.exit()