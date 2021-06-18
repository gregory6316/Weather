//
//  WeatherAPI.swift
//  Weather
//
//  Created by George Nanyan on 08/11/2017.
//  Copyright © 2017 George Nanyan. All rights reserved.
//

import Foundation

class WeatherAPI {
    static func currentWeather(for location: String, completionHandler: @escaping ((DayWeather?) -> ())) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(location)&appid=1e0ebf0e7b4d1483bc43c4795ead2d02&units=metric"

        guard let url = URL(string: urlString) else {
            // handle this error
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil,
                let data = data else {
                // handle this error
                return
            }
            
            // data -> json/dictionary -> DayWeather
            do {
                guard let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    // handle this error
                    return
                }
                
                let weather = WeatherSerializer.weatherFromJSON(jsonDictionary)
                completionHandler(weather)
                
            } catch {
                // handle this error
            }
        }
        task.resume()

    }
}









