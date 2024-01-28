//
//  Service.swift
//  weather
//
//  Created by Deivao on 26/01/24.
//

import Foundation

struct City {
    let lat, long, name: String
}

class Service {
    
    private let baseUrl: String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apikey: String = "1251aeeecc49fa3167162bcd3bbfe9e4"
    private let session = URLSession.shared
    
    func fetchData(city: City, _ completion: @escaping (String) -> Void) {
        let urlString = "\(baseUrl)?lat=\(city.lat)&long=\(city.long)&appid=\(apikey)"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            completion("Hello world")
        }
        task.resume()
    }
}
