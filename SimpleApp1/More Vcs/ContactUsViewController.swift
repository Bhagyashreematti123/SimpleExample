//
//  ContactUsViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 21/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController {

    @IBOutlet weak var lblCallUs: UILabel!
    @IBOutlet weak var lblCallInfo: UILabel!
    @IBOutlet weak var callBtn: UIButton!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var emailBtn: UIButton!
    @IBOutlet weak var lblEmailInfo: UILabel!
    @IBOutlet weak var lblWatsapp: UILabel!
    @IBOutlet weak var lblWatsappInfo: UILabel!
    @IBOutlet weak var watsappBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
       lblCallInfo.layer.borderWidth = 2.0
       lblEmailInfo.layer.borderWidth = 2.0
       lblWatsappInfo.layer.borderWidth = 2.0
    }
    
    

    
}
