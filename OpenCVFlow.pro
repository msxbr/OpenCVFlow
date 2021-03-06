QT       += core gui widgets

TARGET = OpenCVFlow
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000
CONFIG  += c++14

DEPLOY_PATH = $${PWD}/../OpenCVFlowDeploy

#---------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
OBJECTS_DIR = $${DEPLOY_PATH}/C_OBJ
MOC_DIR     = $${DEPLOY_PATH}/C_MOC
UI_DIR      = $${DEPLOY_PATH}/C_UI

#---------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
CONFIG(debug, debug|release) {
    DESTDIR     = $${DEPLOY_PATH}/Debug
}

CONFIG(release, debug|release) {
    DESTDIR     = $${DEPLOY_PATH}/Release
}

#---------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
SOURCES += \
        main.cpp \
        mainwindow.cpp

#---------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
HEADERS += \
        mainwindow.h

#---------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
FORMS += \
        mainwindow.ui
