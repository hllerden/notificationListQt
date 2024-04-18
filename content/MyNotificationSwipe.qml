import QtQuick 6.2
import QtQuick.Controls 6.2

SwipeDelegate {
    id: swipeDelegate
    width: parent.width
    height: 50


    text: qsTr("Swipe Delegate")
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
                }
            }
    swipe.transition: Transition {
            SmoothedAnimation { velocity: 5; easing.type: Easing.InOutCubic }
        }


    Rectangle{
        id:background
        color:"green"
        anchors.left: parent.left
        anchors.right: swipe.right.left


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

