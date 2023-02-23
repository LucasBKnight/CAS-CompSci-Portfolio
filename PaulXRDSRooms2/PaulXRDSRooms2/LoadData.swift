//
//  LoadData.swift
//  PaulXRDSRooms2
//
//  Created by Lucas Knight on 2/7/23.
//

import Foundation

func loadData(urlString:String, completion:@escaping([roomStruct]) -> Void)
{
    let url = URL(string: urlString)
    let request = URLRequest(url: url!)
    let task = URLSession.shared.dataTask(with: request){ data, response, error in
        do {
            if let data = data{
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
                
                let parsedJSON = try JSONDecoder().decode([roomStruct].self, from: data)
                completion(parsedJSON)
            }
        }
        catch{
            print(error)
        }
        }
    task.resume()
    }
