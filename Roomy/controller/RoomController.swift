//
//  RoomController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/10/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import Alamofire

func getAllRoomsReq()->[Room]{
    let tempRooms: [Room] = []
//    AF.request(URLS["getAllRooms"]!, method: .post, parameters: room, encoder: JSONParameterEncoder.default).responseJSON { response in
//              let res = response.value as! [String: String]
//              if((res["message"]) != nil){
//                  print(res["message"]!)
//                  completion()
//              }
//          }
    return tempRooms
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
