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
    @IBOutlet weak var loadingIndecator: UIActivityIndicatorView!
    @IBOutlet weak var signUpButtonText: UIButton!
    
    override func viewDidLoad() {
        print("Sign Up Screen")
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        loadingIndecator.startAnimating()
        signUpButtonText.isHidden = true
        
        let userName = userNameTextField.text
        let email = emailTextField.text
        let pasword = passwordTextField.text

       let newUser = User(name: userName ?? "", email: email ?? "", password: pasword ?? "")
        
        signUpReq(user: newUser, completion: goToHome)
        
    }
    func goToHome(){
        loadingIndecator.stopAnimating()
        signUpButtonText.isHidden = false
         performSegue(withIdentifier: "SignUpToHome", sender: nil)
    }
    
}
