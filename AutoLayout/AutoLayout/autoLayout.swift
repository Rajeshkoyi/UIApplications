//
//  autoLayout.swift
//  AutoLayout
//
//  Created by techno krishna on 15/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//


import UIKit
class autoLayout: UIViewController {

    
    @IBOutlet weak var LoginField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    @IBOutlet weak var PasswordLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    var loggedInUser:User?{didSet{updateUI()}}
    var secure = false{didSet{updateUI()}}
    private func updateUI() {
        PasswordField.secureTextEntry = secure
        PasswordLabel.text = secure ? "secured Password" : "Password"
        nameLabel.text = loggedInUser?.name
        companyLabel.text = loggedInUser?.company
        imageView.image = loggedInUser?.image
     }
    
    @IBAction func login() {
        loggedInUser = User.login(LoginField.text ?? "", password: PasswordField.text ?? "")
    }
    @IBAction func toggleSecurity() {
        secure = !secure
    }
}
// create image property in user structure
extension User {
    var image:UIImage?{
        if let image =  UIImage(named:"logo") {
            return image
        }
        else{
            return  UIImage(named: "Unkown_User")
        }
        
    }
}

