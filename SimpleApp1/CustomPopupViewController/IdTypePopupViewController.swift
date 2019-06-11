//
//  IdTypePopupViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 10/06/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class IdTypePopupViewController: UIViewController {
    
    var Data1 : [String] = ["KSA ID","PASSPORT"]
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var popupTableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleView: UIView!
    var tapgesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapgesture = UITapGestureRecognizer(target: self, action: #selector( IdTypePopupViewController.myViewTapped(_:)))
        tapgesture.delegate = self
        view.addGestureRecognizer(tapgesture)
        self.titleLabel.text = "Id Type"
    }
   @objc func myViewTapped(_ recognizer : UITapGestureRecognizer){
    self.dismiss(animated: false, completion: nil)
    }

}
extension IdTypePopupViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data1.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell =  tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = Data1[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
     self.dismiss(animated: false, completion: {[weak self] in
       guard let strongSelf = self else { return }
        NotificationCenter.default.post(name: NSNotification.Name("SendIdType"), object: nil, userInfo: ["idType": "\(strongSelf.Data1[indexPath.row])"])
    })
        
    }
}
extension IdTypePopupViewController : UIGestureRecognizerDelegate{
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool{
        if touch.view?.isDescendant(of: popUpView) == true{
            return false
        }
        return true
    }

    
}
