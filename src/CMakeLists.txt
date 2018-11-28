# import Qt libraries
find_package(Qt5 REQUIRED COMPONENTS Quick Gui Qml)

# find includes in current build dir (required for MOC)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# run Qt's MOC automatically if required
set(CMAKE_AUTOMOC ON)
# create code for given designer UI files
set(CMAKE_AUTOUIC ON)
# compile resources automatically using rcc
set(CMAKE_AUTORCC ON)

# make information from Qt resource file available in CMake
qt5_add_resources(QT_RESOURCES qml.qrc)

# build binary from C++ code and the imported Qt resource data
add_executable(QtQuickApp main.cpp ${QT_RESOURCES})
# link to Qt5 libraries
target_link_libraries(QtQuickApp Qt5::Quick Qt5::Gui Qt5::Qml)

# install QtQuickApp binary
install(
    TARGETS QtQuickApp
    RUNTIME DESTINATION bin
)
