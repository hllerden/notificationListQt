import QtQuick 6.2


ListView {
    id: listView
    x: 312
    y: 143
    width: 325
    height: 159
    spacing:3
    clip: true
    flickableDirection: Flickable.VerticalFlick
  //  boundsBehavior: Flickable.StopAtBounds

     model: listModel
     ListModel {
         id:listModel
         ListElement {
             name: "swipe me"
         }

         ListElement {
             name: "swipe me too"
         }

         ListElement {
             name: "I will swipe the most"
         }

         ListElement {
             name: "test"
         }
     }

    delegate:MyNotificationSwipe{
        id: itemDelegate
            nText:name


            }


    function addNotificaiton(text){
        listModel.append({name:text})
    }
        /*
        MyNotificationItemDelegate {
        id: itemDelegate
        text: name
        //color: colorCode

        }
    */
}
