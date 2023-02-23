//
//  Main Screen.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import SwiftUI

struct Main_Screen: View {
    var body: some View {
//        ZStack{

            NavigationView{
               
                NavigationLink("Go to Rooms List", destination: Rooms_List())
                    .buttonStyle(.borderedProminent)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading,
                                    content: {
                            Image("XRDSimg")
                                .resizable()
                                .scaledToFit()
                        })
                    }
                
            }
            
//        }
    }
}

struct Main_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Main_Screen()
    }
}
