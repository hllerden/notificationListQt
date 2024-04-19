import QtQuick 6.2
import QtQuick.Controls 6.2
import Qt5Compat.GraphicalEffects
import notificationListQt
SwipeDelegate {
    id: swipeDelegate
    width: parent.width
    height: 50


    text: qsTr("Swipe Delegate")
    // set text color



    property bool current:ListView.isCurrentItem

    onPressed:  {
       ListView.view.currentIndex = index
    }
    onCurrentChanged: {
        if (!current&&swipe.opened) {
            swipe.close();
        }
        console.log("current item at indexs: "+index)
    }

   background:
       Item{

       Rectangle {
           id:backRect
            radius: 10
           width: swipeDelegate.width
           height: 50
           color: "black"
           border.color: "white"

            RadialGradient {
               anchors.fill: parent
               source:parent


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


    swipe.right: Label {
                id: deleteLabel
                text:"Delete"
                color: "white"
                verticalAlignment: Label.AlignVCenter
                padding: 12
                height: parent.height
                anchors.right: parent.right
                SwipeDelegate.onClicked: {
                   // console.log("delete item at index: "+index);
                   // console.log("delete item at model index: "+ListModel);
                   // ListModel.remove(index,1);
                    swipe.close();
                    listView.model.remove(index);
                }

                background: Rectangle {
                    color: deleteLabel.SwipeDelegate.pressed ? Qt.darker("tomato", 1.3) : "tomato"
                    radius: 10
                }
            }
    swipe.transition: Transition {
            SmoothedAnimation { velocity: 5; easing.type: Easing.InOutCubic }
        }




    ListView.onRemove: SequentialAnimation {
               PropertyAction {
                    target: swipeDelegate
                    property: "ListView.delayRemove"
                    value: true
                }
               ParallelAnimation{

                NumberAnimation {
                    target: swipeDelegate.Label
                    property: "height"
                    to: 0
                    duration: 300
                    easing.type: Easing.InOutCubic
                }
                NumberAnimation {
                    target: swipeDelegate
                    property: "opacity"
                    to: 0
                    duration: 200
                    easing.type: Easing.InOutCubic
                }
               }
                PropertyAction {
                    target: swipeDelegate
                    property: "ListView.delayRemove"
                    value: false
                }
    }




}

