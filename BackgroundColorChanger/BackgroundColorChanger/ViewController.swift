//
//  ViewController.swift
//  BackgroundColorChanger
//
//  Created by techno krishna on 21/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func backgroundColorChanger() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        let red = CGFloat(redSlider.value/255)
        let green = CGFloat(greenSlider.value/255)
        let blue = CGFloat(blueSlider.value/255)
    
        
        let myColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        self.view.backgroundColor = myColor
    }
}

