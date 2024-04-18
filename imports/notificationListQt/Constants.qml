pragma Singleton
import QtQuick 6.2
import QtQuick.Studio.Application

QtObject {
    readonly property int width: 1024
    readonly property int height: 600

    property string relativeFontDirectory: "fonts"

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: Qt.application.font.family,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })

    readonly property color backgroundColor: blackColor
    readonly property color blackColor: "#010B19"
    readonly property color focusBlue: "#1DA1F2"

   readonly property color blueColor: "#1DA1F2"
   readonly property color darkBlueColor:"#0b76b8"
   readonly property color whiteColor: "#E5DFF0"
   readonly property color grey: "#92949C"
   readonly property int sideBarWidth: 250


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../../content/" + relativeFontDirectory)
    }
}
