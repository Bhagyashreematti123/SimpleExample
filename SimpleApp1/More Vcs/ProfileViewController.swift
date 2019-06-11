//
//  ProfileViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 27/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet var addressContainerView: UIView!
    @IBOutlet weak var travellerContainerView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var controller = PopupViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileView.isHidden = false
        self.addressContainerView.isHidden = true
        self.travellerContainerView.isHidden = true
        
}   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProfileInfo" {
            guard let profileInfoController = segue.destination as? ProfileInfoViewController else { return }
          profileInfoController.segmentControlDelegate = self
        }
    }
    @IBAction func showSwitchBtn(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            self.profileView.isHidden = false
            self.addressContainerView.isHidden = true
            self.travellerContainerView.isHidden = true
        }
        else if(sender.selectedSegmentIndex == 1){

            self.profileView.isHidden = true
            self.addressContainerView.isHidden = false
            self.travellerContainerView.isHidden = true

        }
        else if(sender.selectedSegmentIndex == 2){

            self.profileView.isHidden = true
            self.addressContainerView.isHidden = true
            self.travellerContainerView.isHidden = false
        }
    }

}
extension ProfileViewController: SetSegmentControl {
    
    func setSegmentControl(index: Int) {
        segmentControl.selectedSegmentIndex = index
        self.profileView.isHidden = true
        self.addressContainerView.isHidden = false
        self.travellerContainerView.isHidden = true
    }
    func showPopUpViewController() {
        controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        controller.modalPresentationStyle = .overCurrentContext
       // controller.modalTransitionStyle = .crossDissolve
        self.present(controller, animated: false, completion: nil)
        controller.configureView(title: "Title", data: ["Mr", "Ms"])
    }
    func showIdTypePopupViewController() {
        controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        controller.modalPresentationStyle = .overCurrentContext
        self.present(controller, animated:false, completion: nil)
        controller.configureView(title: "ID Type", data: ["KSA ID","PASSPORT"])
    }
}
