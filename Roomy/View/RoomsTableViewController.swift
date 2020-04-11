//
//  tableViewController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 3/14/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit

class RoomsTableViewController: UITableViewController {
    var rooms: [Room] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Table Page")
        getAllRoomsReq(completion: setRooms)
    }
    
    func setRooms(rooms:[Room]){
        
        self.rooms = rooms
        tableView.reloadData()
    }
    
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return rooms.count
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let room = rooms[indexPath.row]
        print(room)
        let cell = tableView.dequeueReusableCell(withIdentifier: "roomCell") as! RoomTableCellViewController
        cell.setRoom(room: room)
        return cell
        
    }
}
