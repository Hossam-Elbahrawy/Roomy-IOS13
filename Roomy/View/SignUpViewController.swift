//
//  SignUpViewController.swift
//  Roomy
//
//  Created by Hossam Elbahrawy on 4/9/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import UIKit

class SignUpViewController : UIViewController{
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        print("Sign Up Screen")
    }
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let userName = userNameTextField.text
        let email = emailTextField.text
        let pasword = passwordTextField.text
        print(userName!)
        print(email!)
        print(pasword!)
       let newUser = User(name: userName ?? "", email: email ?? "", password: pasword ?? "")
        
     let res = signUpUser(user: newUser)
        if(res){
            performSegue(withIdentifier: "SignUpToHome", sender: nil)
        }
    }
    
}
