

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

    color: Constants.backgroundColor

    MyNotificationView {
        id: myNotificationView
        x: 285
        y: 147
    }
    Rectangle {
        id: guideRectangle
        anchors.fill: myNotificationView
        color: "transparent"
        border.color: "green"
        border.width: 1
    }

    Rectangle {
        id: rectangle1
        x: 285
        y: 335
        width: 296
        height: 46
        color: "#010b19"
        radius: 5
        border.color: "#ffffff"

        RadialGradient {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop {
                    position: 0.5
                    color: Constants.backgroundColor
                }

                GradientStop {
                    position: 1
                    color: Constants.grey
                }
            }
        }
    }
}
