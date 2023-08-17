//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Eugene on 17/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var farengeitLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }

    @IBAction func sliderChangeTemperature(_ sender: UISlider) {
        
        let temperatureValue = round(sender.value)
        farengeitLabel.text = "\(temperatureValue) ºF"
        let temperatureCelsiusValue = (temperatureValue - 32) * 5 / 9
        celsiusLabel.text = "\(round(temperatureCelsiusValue)) ºC"
        
    }
    
    
    private func setupSlider() {
        slider.minimumValue = 0
        slider.maximumValue = 210
        slider.value = 105
        slider.maximumTrackTintColor = .red
    }
    
}

