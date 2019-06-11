//
//  SwitchViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 20/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var xibConatiberView: UIView!
    @IBOutlet weak var segmentController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let simpleVC1 = SimpleVc1()
        xibConatiberView.addSubview(simpleVC1.view)
        
        }
    
    @IBAction func switchBtnTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            let simpleVC1 = SimpleVc1()
            xibConatiberView.addSubview(simpleVC1.view)
            break
        case 1:
            let simpleVC2 = SimpleVc2()
            xibConatiberView.addSubview(simpleVC2.view)
            break
        default:
            break
        }
    }
    

}
