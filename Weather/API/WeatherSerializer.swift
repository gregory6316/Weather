//
//  WeatherSerializer.swift
//  Weather
//
//  Created by George Nanyan on 08/11/2017.
//  Copyright © 2017 George Nanyan. All rights reserved.
//

import Foundation
var icon = "?"
class WeatherSerializer {
    
    static func weatherFromJSON(_ json: [String: Any]) -> DayWeather? {
        let weather = DayWeather()
        
        guard let main = json["main"] as? [String: Any] else {
            return nil
        }
        guard let windinfo = json["wind"] as? [String: Any] else {
            return nil
        }
        guard let cityinfo = json["name"] as? String else {
            return nil
        }
        guard let weatherarrays = json["weather"] as? [[String: Any]] else {
            return nil
        }
        for weatherarray in weatherarrays {
            icon = (weatherarray["icon"] as? String)!
        }
        let wind = windinfo["speed"] as? Double ?? 0.0
        let temp = main["temp"] as? Double ?? 0.0
        let pressure = main["pressure"] as? Double ?? 0.0
        let humidity = main["humidity"] as? Double ?? 0.0
        let city = cityinfo
        
        weather.weathericon = icon
       weather.city = city
        weather.wind = String(format: "%.0f", wind)+" m/s"
        weather.humidity = String(format: "%.0f", humidity)+" %"
        weather.temperature = String(format: "%.0f", temp)+" °С"
        weather.pressure = String(format: "%.0f", pressure)+" mmHg"
        
        return weather
    }
}
