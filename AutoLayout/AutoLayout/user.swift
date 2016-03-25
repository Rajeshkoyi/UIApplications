//
//  user.swift
//  AutoLayout
//
//  Created by techno krishna on 16/03/16.
//  Copyright © 2016 techno krishna. All rights reserved.
//

import Foundation

struct User {
    
    let name:String
    let company:String
    let login:String
    let password:String
    
    static func login(login:String,password:String)->User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database:Dictionary<String,User> = {
        var theDatabase = Dictionary<String,User>()
        for user in [User(name: "rajesh koyi", company: "technoidentity", login: "raj", password: "123"),
            User(name: "naveed ur rahman", company: "technoidentity", login: "naveed", password: "123")
            ]{
                theDatabase[user.login] = user
        }
        return theDatabase
    }()
    
}
