//
//  PopupViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 05/06/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {
    
    var popupData = [String]()

    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var popupTableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleView: UIView!
    var tapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGesture = UITapGestureRecognizer(target: self, action: #selector( PopupViewController.myviewTapped(_:)))
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func myviewTapped(_ recognizer: UIGestureRecognizer) {
        self.dismiss(animated: false, completion: nil)
    }
    
    func configureView(title: String, data: [String]) {
        self.titleLabel.text = "\(title)"
        popupData = data
        popupTableView.reloadData()
    }
}
extension PopupViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popupData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = popupData[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {

        self.dismiss(animated: false, completion: { [weak self] in
            guard let strongslef = self else { return }
            NotificationCenter.default.post(name: NSNotification.Name("SendData"), object: nil, userInfo: ["title": "\(strongslef.popupData[indexPath.row])"])
     })
    }
}

extension PopupViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view?.isDescendant(of: popUpView) == true {
            return false
        }
        return true
    }
}
