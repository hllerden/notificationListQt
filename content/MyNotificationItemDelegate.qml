import QtQuick 6.2
import QtQuick.Controls 6.2

ItemDelegate {
    id: itemDelegate
    width: parent.width
    height: 50
    text: qsTr("Item Delegate")

    Rectangle {
        id:itemBackGround
        anchors.fill: parent
        color:"transparent"
        border.width: 1
        border.color: "blue"
        radius :5
    }

}
