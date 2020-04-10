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
    @IBOutlet weak var loadingIndecator: UIActivityIndicatorView!
    
    @IBOutlet weak var signInButtonText: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Sign In  Page")
        let token = keychain.get("auth_token")
        if(token != nil){
            goToHome()
        }
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        signInButtonText.isHidden = true
        loadingIndecator.startAnimating()
        
        let email = emailTextField.text
        let pasword = passwordTextField.text
        let user = User(email: email ?? "", password: pasword ?? "")
        signInReq(user, completion:goToHome)
        
    }
    
    func goToHome(){
        performSegue(withIdentifier: "SignInToHome", sender: nil)
        loadingIndecator.stopAnimating()
        signInButtonText.isHidden = true
    }
}
