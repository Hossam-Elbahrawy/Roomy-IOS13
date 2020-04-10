//
//  signInViewController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 3/14/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit

class SignInViewContoller: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Sign In  Page")
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        let email = emailTextField.text
        let pasword = passwordTextField.text
        let user = User(name: "", email: email ?? "", password: pasword ?? "")
        
       let res = signInUser(user: user)
        if(res){
            performSegue(withIdentifier: "SignInToHome", sender: nil)
        }
    }
    
    
}
