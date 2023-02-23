//
//  Rooms List.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import SwiftUI

struct Rooms_List: View {
    @State var rooms:[roomStruct]?
    @State var search = "search"
    var body: some View {
        if let rooms = rooms{
            NavigationView()
            {
                TextField("Search", text: $search)
                NavigationView(){
                    List(rooms) { roomStruct in
                        //if(room.fullName )
                        NavigationLink {
                            RoomsCloseup(room: roomStruct)
                        }
                    label: {
                        Room_Row(room: roomStruct)
                    }
                    }
                    //.navigationTitle("Rooms of Crossroads")
                    .multilineTextAlignment(.center)
                } .toolbar{
                    ToolbarItem(placement: .navigationBarLeading,
                                content: {
                        Image("XRDSimg")
                            .resizable()
                            .scaledToFit()
                        //.padding(1)
                    })
                }
            }
        } else
        {
            Text("LOADING")
                .onAppear(){
                    loadData(urlString: "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/roomData.json", completion: {roomData in
                        self.rooms = roomData
                    })
                }
        }
    }
}


struct Rooms_List_Previews: PreviewProvider {
    static var previews: some View {
        Rooms_List()
    }
}
