//
//  map.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/4/23.
//

import SwiftUI
import MapKit
struct roomMarker: Identifiable
{
    var name:String
    var id: Int
}


struct map: View {
    var coordinate: CLLocationCoordinate2D
    var room: roomStruct
    @State private var region = MKCoordinateRegion()

    var body: some View {
        let RM:roomMarker = roomMarker(name: room.fullName, id: 0)
        Map(coordinateRegion: $region,
            annotationItems: [RM])
        {_ in
            MapMarker(coordinate: coordinate)
        }
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                setRegion(coordinate)
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.0005, longitudeDelta: 0.0005)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        map(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), room: roomStruct(id: 1, room: "", fullName: "John", building: "", date: "", profession: "", imageName: "", imageExtension: "", longitude: 2.0, latitude: 2.0, floor: "", blurb: "", quote: ""))
    }
}
