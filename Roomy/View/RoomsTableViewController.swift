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
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           print("Table Page")
        navigationBar.hidesBackButton = true
        
    }
}
