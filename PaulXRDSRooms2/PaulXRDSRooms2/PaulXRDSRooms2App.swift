//
//  PaulXRDSRooms2App.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import SwiftUI

@main
struct PaulXRDSRooms2App: App {
    @State public var Sight = 1;
    var body: some Scene {
        WindowGroup {
            if(Sight == 0){
                Main_Screen()
            }
            else if(Sight == 1){
                Rooms_List()
            }
                
        }
    }
}
