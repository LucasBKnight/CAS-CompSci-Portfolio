//
//  RoomStruct.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//

import Foundation

struct  roomStruct: Codable, Hashable, Identifiable
{
    var id: Int
    var room: String
    var fullName: String
    var building: String
    var date: String
    var profession: String
    var imageName: String
    var imageExtension: String?
    var longitude: Double
    var latitude: Double
    var floor: String
    var blurb: String
    var quote: String
}
/*
"id": 1,
"room": "Ahmanson",
"fullName": "Ahmanson Foundation",
"building": "Arts Building",
"date": "0-0",
"profession": "N/A",
"imageName": "TBD",
"longitude": 0,
"latitude": 0,
"floor": "TBD",
"blurb": "TBD",
"quote": "TBD"
*/
