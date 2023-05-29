//
//  UserDeteilsViewController.swift
//  UserAppsss
//
//  Created by Serj on 29.05.2023.
//

import UIKit

class UserDeteilsViewController: UIViewController {
    

        @IBOutlet weak var phoneLabel: UILabel!
        
        @IBOutlet weak var emailLabel: UILabel!
        
        var user: User!
        
        override func viewDidLoad() {
            super.viewDidLoad()
           

            title = "\(user.name) \(user.surname)"
            phoneLabel.text = "Phone: \(user.phone)"
            emailLabel.text = "Email: \(user.email)"
        }
        


    }
