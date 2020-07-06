#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QtGui>
#include <QtWidgets>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QDockWidget *dock = new QDockWidget(tr("Operations"), this);
    dock->setAllowedAreas(Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea);
    functionList = new QListWidget(dock);
    functionList->addItem("Image from file");
    functionList->addItem("Image from camera");
    functionList->addItem("Threshold");
    functionList->addItem("Image Viewer");

    dock->setWidget(functionList);
    addDockWidget(Qt::LeftDockWidgetArea, dock);
    ui->menu_View->addAction(dock->toggleViewAction());

    flowView = new QGraphicsView();
    testScene.setBackgroundBrush(Qt::darkGray);
    flowView->setScene(&testScene);
    this->setCentralWidget(flowView);
}

MainWindow::~MainWindow()
{
    delete ui;
}
