//
//  ViewController.swift
//  Weather
//
//  Created by George Nanyan on 18/10/2017.
//  Copyright © 2017 George Nanyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var location: String?
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let location = location {
            WeatherAPI.currentWeather(for: location, completionHandler: { (weather) in
                guard let weather = weather else {
                    // handle error
                    return
                }
                
                DispatchQueue.main.async {
                    self.updateView(weather: weather)
                }
            })
        }
       
    }
   
    func updateView(weather: DayWeather) {
        cityLabel.text = weather.city
        temperatureLabel.text = String(weather.temperature)
        windLabel.text = String(weather.wind)
        humidityLabel.text = String(weather.humidity)
        pressureLabel.text = String(weather.pressure)
        switch weather.weathericon {
        case "01d":
            imageLabel.image = #imageLiteral(resourceName: "firstday")
        case "01n":
            imageLabel.image =  #imageLiteral(resourceName: "firstnight")
        case "02d":
            imageLabel.image = #imageLiteral(resourceName: "secondday")
        case "02n":
            imageLabel.image = #imageLiteral(resourceName: "secondnight")
        case "03d":
            imageLabel.image = #imageLiteral(resourceName: "thirdday")
        case "03n":
            imageLabel.image = #imageLiteral(resourceName: "thirdnight")
        case "04d":
            imageLabel.image = #imageLiteral(resourceName: "fourthday")
        case "04n":
            imageLabel.image = #imageLiteral(resourceName: "fourthnight")
        case "09d":
            imageLabel.image = #imageLiteral(resourceName: "ninthday")
        case "09n":
            imageLabel.image = #imageLiteral(resourceName: "ninthnight")
        case "10d":
            imageLabel.image = #imageLiteral(resourceName: "tenthday")
        case "10n":
            imageLabel.image = #imageLiteral(resourceName: "tenthnight")
        case "11d":
            imageLabel.image = #imageLiteral(resourceName: "eleventhday")
        case "11n":
            imageLabel.image = #imageLiteral(resourceName: "eleventhnight")
        case "13d":
            imageLabel.image =  #imageLiteral(resourceName: "thirteenthday")
        case "13n":
            imageLabel .image = #imageLiteral(resourceName: "thirteenthnight")
        default : imageLabel.image =  #imageLiteral(resourceName: "firstnight")
        }
    }
    
    

}

