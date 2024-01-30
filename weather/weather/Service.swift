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

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let forecastResponse = try? JSONDecoder().decode(ForecastResponse.self, from: jsonData)

import Foundation

// MARK: - ForecastResponse
struct ForecastResponse: Codable {
    let current: Forecast
    let hourly: [Forecast]
    let daily: [DailyForecast]
}


// MARK: - Forecast
struct Forecast: Codable {
    let dt: Int
    let temp: Double
    let humidity: Int
    let windSpeed: Double
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, temp, humidity
        case windSpeed = "wind_speed"
        case weather
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description, icon: String
}

// MARK: - DailyForecast
struct DailyForecast: Codable {
    let dt : Int
    let temp: Temp
    let weather: [Weather]
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}

// MARK: - Minutely
struct Minutely: Codable {
    let dt, precipitation: Int
}

