//
//  Room.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/9/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation

struct Room {
    
    let title: String
    let price: String
    let place: String
    let image: String
    let description: String
    
    init(title: String, price: String, place: String, image: String, description: String) {
        self.title = title
        self.price = price
        self.place = place
        self.image = image
        self.description = description
    }
}
