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
             name: "kaydır beni"
             colorCode: "grey"
         }

         ListElement {
             name: "benide kaydır"
             colorCode: "red"
         }

         ListElement {
             name: "en çok ben kayacam"
             colorCode: "blue"
         }

         ListElement {
             name: "Green"
             colorCode: "green"
         }
     }

    delegate:MyNotificationSwipe{
        id: itemDelegate
            text:name


            }




        /*
        MyNotificationItemDelegate {
        id: itemDelegate
        text: name
        //color: colorCode

        }
    */
}
