//
//  Room Row.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import SwiftUI

struct Room_Row: View {
    var room: roomStruct
    var body: some View {
        var imglink:String = "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/images/" + room.imageName + room.imageExtension!
        HStack{
          /*  AsyncImage(url:URL(string: imglink),
                       content: { image in
                image
                    .resizable()
                    .scaledToFit()
                    .aspectRatio( contentMode: .fit)
                    .frame(width:100,height:100)
                    .padding(10)
                }, placeholder: {
                   
                }
                       
            )*/

            Text(room.room)
                .padding(.leading, -20)
            Spacer()
        }
    }
}

struct Room_Row_Previews: PreviewProvider {
    static var previews: some View {
        Room_Row(room: rooms[3])
    }
}
