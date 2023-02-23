//
//  moreInfo.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/5/23.
//


/*--------------------------------------
DEPRECATED FILE
--------------------------------------*/
import SwiftUI

struct moreInfo: View {
    var room: roomStruct
    
    var body: some View {
        let imglink:String = "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/images/" + room.imageName + room.imageExtension!
        VStack{
            Image("XRDSimg")
                .resizable()
                .scaledToFit()
                .padding(10)
                .opacity(0)
            AsyncImage(url:URL(string: imglink),
                       content: { image in
                image
                    .resizable()
                    .scaledToFit()
                }, placeholder: {
                    ProgressView()
                }
                       
            )
                
                //.edgesIgnoringSafeArea(.top)
                
                
                
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

struct moreInfo_Previews: PreviewProvider {
    static var previews: some View {
        moreInfo(room: rooms[9])
    }
}
