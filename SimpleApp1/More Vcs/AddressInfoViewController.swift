//
//  AddressInfoViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 28/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class AddressInfoViewController: UIViewController {

    
    @IBOutlet weak var address1TextField: UITextField!
    @IBOutlet weak var address2TextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var postalCodeTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        address1TextField.borderStyle = .none
        address2TextField.borderStyle = .none
        cityTextField.borderStyle = .none
        stateTextField.borderStyle = .none
        postalCodeTextField.borderStyle = .none
        countryTextField.borderStyle = .none
        
    }
}
extension AddressInfoViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField ==  countryTextField {
            
            return false
        }
        return true
        
    }
}



