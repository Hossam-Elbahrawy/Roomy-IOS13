//
//  SignInController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/10/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import Alamofire
import KeychainSwift
let keychain = KeychainSwift()

func signInReq(_ user: User, completion: @escaping()->()) {
    //    let url = URL(string: URLS["signIn"]!)
    AF.request(URLS["signIn"]!, method: .post, parameters: user, encoder: JSONParameterEncoder.default).responseJSON{
        response in
        let res = response.value as! [String: String]
        if((res["message"]) != nil){
            print(res["message"]!)
        }else{
                        print(res["auth_token"]!)
            keychain.set(res["auth_token"]!, forKey: "auth_token")
            completion()
        }
    }
    
}



