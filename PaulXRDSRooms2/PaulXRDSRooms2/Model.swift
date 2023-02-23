//
//  Model.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 1/3/23.
//
import Foundation
var rooms: [roomStruct] = load("roomData.json")

func load<Jfile: Decodable>(_ file: String) -> Jfile {
    let models: Data

    guard let model = Bundle.main.url(forResource: file, withExtension: nil)
    else
    {
        fatalError("Don't work")
    }

    do {
        models = try Data(contentsOf: model)
    }
    catch
    {
        fatalError("Don't Work")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(Jfile.self, from: models)
    }
    catch
    {
        fatalError("Don't Work")
    }
}
