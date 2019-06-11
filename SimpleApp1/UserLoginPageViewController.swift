//
//  PriestContactsViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit


class UserLoginPageViewController: UIViewController {
    
    var dummyValues: [NSMutableDictionary] = []
    
   
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activity.isHidden = true
        self.activity.transform = CGAffineTransform(scaleX: 4, y: 4)
        textPassword1.isSecureTextEntry = true
       
        let credentailsOne = NSMutableDictionary()
        credentailsOne.setValue("Bhagyashree", forKey: "UserName")
        credentailsOne.setValue("sonata@123", forKey: "PassWord")
        dummyValues.append(credentailsOne)
//       let credentailsTwo = NSMutableDictionary()
//        credentailsTwo.setValue("Mahesh", forKey: "UserName")
//        credentailsTwo.setValue("support@123", forKey: "PassWord")
//        dummyValues.append(credentailsTwo)
       
        print(dummyValues)
        textUsername.text = "Bhagyashree"
        textPassword1.text = "sonata@123"
    }
    
    @IBAction func signupBtnTapped(_ sender: UIButton) {
        
        let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(con, animated: true)
    }
    
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBAction func userLoginBtnTapped(_ sender: UIButton) {
        if activity.isAnimating == false
        {
            activity.isHidden = false
            activity.startAnimating()
        }
        else{
            
        }
        if textUsername.text != "" || textPassword1.text != ""
        {
          for i in 0..<dummyValues.count {
           let obj = dummyValues[i]
             if (obj.value(forKey: "UserName") as!String) == textUsername.text && obj.value(forKey: "PassWord")as?String == textPassword1.text{
                    print("LoginSucessFull")
//                    let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PriestContactsViewController") as!PriestContactsViewController
//                    self.navigationController?.pushViewController(con, animated: true)
                   
                    let delay = 2
                    self.activity.startAnimating()
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay))
                    {
                     self.activity.stopAnimating()
                     self.activity.isHidden = true
                   
                    let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoreMenuViewController") as! MoreMenuViewController
                    self.navigationController?.pushViewController(con, animated: true)
                    }
            }
                else{
                activity.isHidden = true
                activity.stopAnimating()
                let alertController = UIAlertController(title: "There is an Error!!!!",
                                                        message: "please enter a valid username and password",
                                                        preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
                
                }
            }
        }
        
}

}
