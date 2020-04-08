//
//  ViewController.swift
//  ExtensionDemo
//
//  Created by Mahesh on 08/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var FahrenheitTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var celsiusValue:Double!
    var FahrenheitValue:Double!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        celsiusValue = Double(celsiusTextField.text!)!
        
       /*
        print("Celsius To Fahrenheit :  \(celTemperature.celsiusToFahrenheit())")
        print("Fahrenheit To Celsius :  \(fareTemperature.fahrenheitTocelsius())")*/
    }
    
    @IBAction func celConvertButton(_ sender: UIButton) {
        resultLabel.text = Double(celsiusValue.celsiusToFahrenheit())
        
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        print(String(celsiusValue.celsiusToFahrenheit()))
    }
}

extension Double
{
    func celsiusToFahrenheit() -> Double {
        return ((self * 1.800) + 32).rounded()
    }
    func fahrenheitTocelsius() -> Double {
        return ((self - 32) / 1.800).rounded()
    }
}

