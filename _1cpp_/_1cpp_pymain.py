#!/usr/bin/env python
# -*- coding: utf-8 -*-

# try:
#     from PySide import QtCore
#     from PySide import QtWidgets
#     from PySide import QtQuick
# except:
#     from PyQt5.QtCore import pyqtSlot as Slot
#     from PyQt5 import QtCore
#     from PyQt5 import QtWidgets
#     from PyQt5 import QtQuick

import sys
from PyQt5.QtCore import Qt

from PyQt5.QtCore import pyqtProperty, QCoreApplication, QObject, QUrl
from PyQt5.QtQml import qmlRegisterType, qmlRegisterSingletonType, QQmlComponent, QQmlEngine
from PyQt5.QtQml import QQmlApplicationEngine


# This is the type that will be registered with QML.  It must be a
# sub-class of QObject.
from PyQt5.QtWidgets import QApplication, QLabel


ACTIVE_TAB_INDEX_PATCH_MAKE_GUIDE=0
ACTIVE_TAB_INDEX_PATCH_APPLY_RESTORE=1
ACTIVE_TAB_INDEX_THANKS=2

class MainVm(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)
        self._isDetectd=False
        self._name='Monkey Family'
        self._activeTab=ACTIVE_TAB_INDEX_PATCH_APPLY_RESTORE
        pass


    @pyqtProperty(int)
    def activeTab(self):
        return self._activeTab

    # Define the setter of the 'name' property.
    @activeTab.setter
    def activeTab(self, activeTab):
        self._activeTab= activeTab


    # Define the getter of the 'name' property.  The C++ type of the
    # property is QString which Python will convert to and from a string.
    @pyqtProperty('QString')
    def name(self):
        return self._name

    # Define the setter of the 'name' property.
    @name.setter
    def name(self, name):
        self._name = name

    @pyqtProperty(bool)
    def isDetectedFinished(self):
        return self._isDetectd
        pass

    @isDetectedFinished.setter
    def isDetectedFinished(self, isDetected):
        self._isDetectd=isDetected
        pass

    pass

class Person(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)

        # Initialise the value of the properties.
        self._name = ''
        self._shoeSize = 0

    # Define the getter of the 'name' property.  The C++ type of the
    # property is QString which Python will convert to and from a string.
    @pyqtProperty('QString')
    def name(self):
        return self._name

    # Define the setter of the 'name' property.
    @name.setter
    def name(self, name):
        self._name = name

    # Define the getter of the 'shoeSize' property.  The C++ type and
    # Python type of the property is int.
    @pyqtProperty(int)
    def shoeSize(self):
        return self._shoeSize

    # Define the setter of the 'shoeSize' property.
    @shoeSize.setter
    def shoeSize(self, shoeSize):
        self._shoeSize = shoeSize



if __name__ == '__main__':
    # Create the application instance.
    app = QApplication(sys.argv)

    # Register the Python type.  Its URI is 'People', it's v1.0 and the type
    # will be called 'Person' in QML.
    qmlRegisterType(Person, 'People', 1, 0, 'Person')

    #qmlRegisterType(MainVm, 'PyMVVM', 1, 0, 'MainVm')

    qmlRegisterSingletonType(MainVm, 'PyMVVM', 1, 0, 'MainVm', lambda x,y:  MainVm())

    #qmlRegisterSingletonType()

    # Create a component factory and load the QML script.
    # component = QQmlComponent(engine)
    # component.loadUrl(QUrl('example.qml'))
    #
    # # Create an instance of the component.
    # person = component.create()

    # if person is not None:
    #     # Print the value of the properties.
    #     print("The person's name is %s." % person.name)
    #     print("They wear a size %d shoe." % person.shoeSize)
    # else:
    #     # Print all errors that occurred.
    #     for error in component.errors():
    #         print(error.toString())
    #

    #engine=QQmlApplicationEngine(QUrl('main.qml'))
    engine = QQmlApplicationEngine()
    results=engine.load('pymain.qml') #TODO ?
    # window=engine.rootObjects()[0]
    # window.show()

    app.exec_()
    sys.exit(0)

