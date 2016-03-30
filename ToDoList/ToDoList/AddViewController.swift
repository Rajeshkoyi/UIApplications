//
//  AddViewController.swift
//  ToDoList
//
//  Created by techno krishna on 29/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
@IBOutlet weak var TextField: UITextField!
    
override func viewDidLoad() {
        super.viewDidLoad()
  }
    
@IBAction func addButton(sender: AnyObject) {
    
        ToDoList.append(TextField.text!)
    }
    
    
}
