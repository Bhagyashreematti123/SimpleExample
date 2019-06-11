//
//  PriestDetailsViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class PriestLoginPageViewController: UIViewController {
    
    var sampleValue : [NSMutableDictionary] =  []

   
   
    @IBOutlet weak var priestImage: UIImageView!
    @IBOutlet weak var textPriestname: UITextField!
    @IBOutlet weak var textPassword2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textPassword2.isSecureTextEntry = true
        
        let value1 = NSMutableDictionary()
        value1.setValue("Vivekanand", forKey: "username")
        value1.setValue("sonata", forKey: "password")
        sampleValue.append(value1)
        
        let value2 = NSMutableDictionary()
        value2.setValue("Ramakrishna", forKey: "username")
        value2.setValue("support", forKey: "password")
        sampleValue.append(value2)
}
    
    @IBAction func priestLoginBtnTapped(_ sender: UIButton) {
        
        if(textPriestname.text != "" || textPassword2.text != ""){
            for i in 0..<sampleValue.count{
                let obj = sampleValue[i]
                if(obj.value(forKey: "username") as! String) == textPriestname.text && (obj.value(forKey: "password") as? String == textPassword2.text ){
                    let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PriestTemplesViewController") as!PriestTemplesViewController
                    self.navigationController?.pushViewController(con, animated: true)
                }
                else{
            
                        let alertController = UIAlertController(title: "There is an error!!!!",
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
