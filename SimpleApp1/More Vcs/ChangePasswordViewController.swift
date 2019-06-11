//
//  ChangePasswordViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 22/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {
    @IBOutlet weak var txtOldPassword: UITextField!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnChangePassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtOldPassword.isSecureTextEntry = true
        txtNewPassword.isSecureTextEntry = true
        txtConfirmPassword.isSecureTextEntry = true
        
      
        }
    @IBAction func btnChangePasswordTapped(_ sender: UIButton) {
    }
}
