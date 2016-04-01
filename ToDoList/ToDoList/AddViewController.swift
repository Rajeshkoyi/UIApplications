//
//  AddViewController.swift
//  ToDoList
//
//  Created by techno krishna on 29/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()
    }
    
    @IBAction func addButton(sender: AnyObject) {
        let title = titleTextField.text!
        let description = TextField.text!
        
        if !(title.isEmpty && description.isEmpty) {
            ToDoTitle.append(title)
            ToDoList.append(description)
            titleTextField.text = nil
            TextField.text = nil
        }
    }
}
    
    

