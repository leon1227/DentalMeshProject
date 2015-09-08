######################################################################
# Automatically generated by qmake (2.01a) Wed Nov 5 09:14:54 2014
######################################################################

equals(QT_MAJOR_VERSION, 4){
 QT += qt3support
}

QMAKE_CXXFLAGS += \
    -frounding-math \
    -std=c++0x \ #为了解决libIGL库中的“'auto' will change meaning in C++0x”问题而添加此项
    -fopenmp #为了支持OpenMP并行处理而添加此项

DEFINES += GL_GLEXT_PROTOTYPES

SOURCES += \
    src/main.cpp \
    src/GLViewer.cpp \
    src/MainWidow.cpp \
    src/Mesh.cpp \
    src/Shader.cpp \
    src/ToothSegmentation.cpp \
    src/CurvatureComputer.cpp \
    src/LaplaceTransform.cpp \
    lib/igit_geometry/src/assertions.cpp \
    lib/igit_geometry/src/io.cpp \
    lib/igit_geometry/src/kernel.cpp \
    lib/igit_geometry/src/NefPolynomial.cpp \
    lib/igit_geometry/src/Timer.cpp

HEADERS += \
    include/BoundingBox.h \
    include/GLViewer.h \
    include/MainWindow.h \
    include/Mesh.h \
    include/Shader.h \
    include/ToothSegmentation.h \
    include/CurvatureComputer.h \
    include/BooleanOperation.h \
    include/LaplaceTransform.h \
    include/basicType.h

equals(QT_MAJOR_VERSION, 5){
INCLUDEPATH += \
                                    /usr/include/qt5/QtXml/    \
                                    /usr/include/qt5/QtOpenGL  \
                                     /usr/include/qt5/QtWidgets  \
                                     /usr/include/qt5/QtGui \
                                    include/ \
                                     lib/igit_geometry/include/ \#My_CGAL库包含路径
                                     lib/eigen/include/  \#Eigen库包含路径
                                     /usr/local/include/pcl-1.7/ #PCL库包含路径
}

equals(QT_MAJOR_VERSION, 4){
INCLUDEPATH += \
    /usr/include/qt4/QtCore \
   /usr/include/qt4/QtGui \
    /usr/include/qt4/QtOpenGL \
  /usr/include/qt4 \
   /usr/include/qt3/ \
    /usr/include/qt4/QtXml/ \
   include/ \
   lib/igit_geometry/include/ \#My_CGAL库包含路径
    lib/eigen/include/ \ #Eigen库包含路径
    /usr/include/pcl-1.7/ #PCL库包含路径
}

LIBS += \
     -L/usr/lib/x86_64-linux-gnu/ -lQt5OpenGL -lQt5Gui -lQt5Core  -lpthread\
    -lQGLViewer -lglut -lGL -lGLU \ #libQGLViewer和freeglut库文件
    -lOpenMeshCore -lOpenMeshTools \ #OpenMesh库文件
    -lgomp -lpthread \ #为了支持OpenMP并行处理而添加此两项
    -lgsl -lgslcblas -lboost_thread  -lgmp -lmpfr \ #GSL库文件
     -L/usr/local/lib -lpcl_kdtree #PCL库文件

FORMS += \
    ui_template/mainwindow.ui

RESOURCES += \
    resource/ToothSegmentation.qrc

TRANSLATIONS += \
    language/zh_CN.ts

