//
//  RoomsCloseup.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import SwiftUI
import MapKit

    
struct RoomsCloseup: View {
    @State private var isPopover = false
    var room: roomStruct
    var body: some View {
        NavigationStack{
           
               
                VStack{
                    map(coordinate: CLLocationCoordinate2D(latitude: room.latitude, longitude: room.longitude),room:room)
                    Text(room.room)
                        .font(.title)
                        .bold()
                    HStack
                    {
                        Text("Floor: "+room.floor)
                        
                        Text("Building: "+room.building)
                    }
                    Button("\nMore Info                              \n")
                    {
                        self.isPopover.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(100)
                    .controlSize(.large)
                    .popover(isPresented: $isPopover) {
                        
                        VStack{
                            Image(room.imageName)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Text(room.fullName)
                                    .multilineTextAlignment(.center)
                                    .bold()
                                    .font(.title)
                                Text(room.profession)
                                    .multilineTextAlignment(.center)
                                Divider()
                                Text(room.quote)
                                    .multilineTextAlignment(.center)
                                ScrollView{
                                    Text(room.blurb)
                                        .multilineTextAlignment(.center)
                                        .padding( 10)
                                }
                                //Spacer()
                            }
                            // Spacer()
                        }
                    }
                
            }
            
            // .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct RoomsCloseup_Previews: PreviewProvider {
    static var previews: some View {
        RoomsCloseup(room: rooms[3])
    }
}
