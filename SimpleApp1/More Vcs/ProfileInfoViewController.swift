//
//  ProfileInfoViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 28/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

protocol SetSegmentControl: class {
    func setSegmentControl(index: Int)
    func showPopUpViewController()
    func showIdTypePopupViewController()
}
class ProfileInfoViewController: UIViewController {
    
    @IBOutlet weak var titleTextfield: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cntryTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var idTypeTextField: UITextField!
    @IBOutlet weak var idNumberTextField: UITextField!
    @IBOutlet weak var nationalityTextField: UITextField!
    @IBOutlet weak var titleBtn: UIButton!
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    @IBOutlet weak var idTypeBtn: UIButton!
    weak var segmentControlDelegate: SetSegmentControl?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      NotificationCenter.default.addObserver(self, selector: #selector(getData(sender:)), name: NSNotification.Name(rawValue: "SendData"), object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(getIdType(sender:)), name: NSNotification.Name(rawValue: "SendIdType"), object: nil)
    }

    @IBAction func clearBtnTapped(_ sender: UIButton) {
    }
    @IBAction func continueBtnTapped(_ sender: UIButton) {
       segmentControlDelegate?.setSegmentControl(index: 1)
    }
    @objc func getData(sender: Notification) {
        guard let userInfo = sender.userInfo as? [String: String] else { return }
        if userInfo["title"] != nil{
            idTypeTextField.text = userInfo["title"]
            titleTextfield.text = userInfo["title"]
        }
        else{
            
        }
        
    }
//    @objc func getIdType(sender: Notification){
//       guard let userInfo = sender.userInfo as? [String : String] else { return }
//        titleTextfield.text = userInfo["idType"]
//    }
    

    @IBAction func titleButton(_ sender: UIButton) {
        segmentControlDelegate?.showPopUpViewController()
    }
    
    @IBAction func idTypeBtnTapped(_ sender: UIButton) {
        segmentControlDelegate?.showIdTypePopupViewController()
    }
    
}

extension ProfileInfoViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == idTypeTextField {
            return false
        }else if textField == titleTextfield{
            return false
        }
       return true
   }
}


