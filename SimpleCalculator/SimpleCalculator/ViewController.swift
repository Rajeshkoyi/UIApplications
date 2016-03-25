//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by techno krishna on 17/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func perform(op:(Double,Double)->Double)->Double{
    
        let value1 = NSNumberFormatter().numberFromString(textField1.text!)!.doubleValue
        let value2 = NSNumberFormatter().numberFromString(textField2.text!)!.doubleValue
     
       
        let result = op(value1,value2)
        return result
           }
    
    
      @IBAction func operation(sender:UIButton) {
        
        
        let key = sender.currentTitle!
        switch key {
        case "✕": display.text = "\(perform(*))"
        case "+": display.text = "\(perform(+))"
        case "−": display.text = "\(perform{$0 - $1})"
        case "∕": display.text = "\(perform{$0 / $1})"
        case "␡": textField1.text = nil;textField2.text = nil;display.text = "0.0"
        default:break
            
        }
    }
}

