//
//  User.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/9/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation

struct User :Encodable{
    var name: String = ""
    let email: String
    let password: String
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
