//
//  SignUpViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 23/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignUpViewController: UIViewController {

   
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtTitle.borderStyle = .none
        txtFirstName.borderStyle = .none
        txtLastName.borderStyle = .none
        txtEmail.borderStyle = .none
        txtPassword.borderStyle = .none
        txtCountry.borderStyle = .none
        txtConfirmPassword.borderStyle = .none
        txtPhone.borderStyle = .none
    }
    
    
    @IBAction func SignupBtnTapped(_ sender: UIButton) {
        let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoreMenuViewController") as! MoreMenuViewController
        self.navigationController?.pushViewController(con, animated: true)
    }
    
    @IBAction func signinBtnTapped(_ sender: UIButton) {
        let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserLoginPageViewController")as! UserLoginPageViewController
        self.navigationController?.pushViewController(con, animated: true)
    }
}
