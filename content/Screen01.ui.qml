

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import notificationListQt
import Qt5Compat.GraphicalEffects

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: Constants.blueColor

    MyNotificationView {
        id: myNotificationView
        x: 100
        y: 147
        Component.onCompleted: {
            addNotificaiton("hello dear")
        }
    }
    MyNotificationView {
        id: myNotificationView1
        anchors.left: myNotificationView.right
        anchors.leftMargin: 50
        y: 147
        Component.onCompleted: {
            addNotificaiton("hello dear")
        }
    }
    Rectangle {
        id: guideRectangle
        anchors.fill: myNotificationView
        color: "transparent"
        border.color: "green"
        border.width: 1
    }
}
