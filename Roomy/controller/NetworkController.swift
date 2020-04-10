//
//  NetworkController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/10/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import Alamofire

let URLS: [String: String] = [
    "signUp": "https://roomy-application.herokuapp.com/signup",
    "signIn": "https://roomy-application.herokuapp.com/auth/login",
    "addRoom":  "https://roomy-application.herokuapp.com/rooms",
    "getAllRooms":  "https://roomy-application.herokuapp.com/rooms"
]

func signUpReq(user: User) -> Bool {
    //    let url = URL(string: URLS["signIn"]!)
    var res: Bool = false
    AF.request(URLS["signUp"]!, method: .post, parameters: user, encoder: JSONParameterEncoder.default).responseJSON { response in
        switch response.result {
        case .success:
            print("Sign Up Successful")
            res = true
        case let .failure(error):
            print(error)
            res = false
            
        }
    }
    return res
    
}


func signInReq(_ user: User, completion: @escaping()->()) {
    //    let url = URL(string: URLS["signIn"]!)
    AF.request(URLS["signIn"]!, method: .post, parameters: user, encoder: JSONParameterEncoder.default).responseJSON{
        response in
        let res = response.value as! [String: String]
        if((res["message"]) != nil){
            print(res["message"]!)
        }else{
//            print(res["auth_token"]!)
            completion()
        }
    }
}
