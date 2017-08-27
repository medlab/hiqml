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
from PyQt5.QtQml import qmlRegisterType, QQmlComponent, QQmlEngine
from PyQt5.QtQml import QQmlApplicationEngine


# This is the type that will be registered with QML.  It must be a
# sub-class of QObject.
from PyQt5.QtWidgets import QApplication, QLabel


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
    results=engine.load('patchmain.qml')
    # window=engine.rootObjects()[0]
    # window.show()

    app.exec_()
    sys.exit(0)

