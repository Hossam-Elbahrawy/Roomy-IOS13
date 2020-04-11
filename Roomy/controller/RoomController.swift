//
//  RoomController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/10/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import Alamofire

func getAllRoomsReq(completion: @escaping (_ rooms:[Room])->()){
    var tempRooms: [Room] = []
    let token = keychain.get("auth_token")
    let headers: HTTPHeaders = [
        "Authorization": token!
    ]

    AF.request(URLS["getAllRooms"]!, headers: headers).responseJSON { response in
        let resData = response.value as! [Any]
        for res in resData{
            let room = res as! [String: Any]
            let id = room["id"] as! Int
            let title = room["title"] as? String
            let price = room["price"] as? String
            let image = room["image"] as? String
            let description = room["description"] as? String
            let place = room["place"] as? String
            let newRoom = Room(id: id, title: title, price: price, place: place, image: image, description: description)
            tempRooms.append(newRoom)
        }

            completion(tempRooms)
    }
}

func addRoomReq(room: Room, completion: @escaping ()->()){
    
    AF.request(URLS["addRoom"]!, method: .post, parameters: room, encoder: JSONParameterEncoder.default).responseJSON { response in
           let res = response.value as! [String: String]
           if((res["message"]) != nil){
               print(res["message"]!)
               completion()
           }
       }
    
}
