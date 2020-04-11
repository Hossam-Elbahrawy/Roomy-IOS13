//
//  RoomTableCell.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/12/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import UIKit
import Kingfisher

class RoomTableCellViewController: UITableViewCell {
    
    @IBOutlet weak var roomTitle: UILabel!
    @IBOutlet weak var roomPrice: UILabel!
    @IBOutlet weak var roomPlace: UILabel!
    @IBOutlet weak var roomImage: UIImageView!
    @IBOutlet weak var numOfBeds: UILabel!
    @IBOutlet weak var numOfBaths: UILabel!
    
    func setRoom(room: Room){
        roomTitle.text = room.title
        roomPlace.text = room.place
        roomPrice.text = "$\(String(room.price!))"
        roomImage.kf.indicatorType = .activity
        let imageUrl =  URL(string: room.image ?? "")
        roomImage.kf.setImage(with: imageUrl)
    }
    
}
