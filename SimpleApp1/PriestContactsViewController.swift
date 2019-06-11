//
//  PriestContactsViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class PriestContactsViewController: UIViewController{
        
        @IBOutlet weak var tblView: UITableView!
    
var data = [
            DataModel(headerName: "Ramakrishna", subType:["Ramakrishna","984567883","ramk@gmail.com","Jayanagar"], isExpandable: false),
            DataModel(headerName: "Mallikarjuna", subType:["Mallikarjuna","8765429064","mallik123@gmail.com","Rajajinagar"], isExpandable: false),
            DataModel(headerName: "Vivekanand", subType:["Vivekanand","8734207845","vivekl56@yahoo.com","Basavanagudi"], isExpandable : false),
            DataModel(headerName: "Durgaprasad", subType:["Durgaprasad","7867364748","durga23@gmail.com","kengeri"], isExpandable: false)]
        override func viewDidLoad() {
        super.viewDidLoad()
            tblView.tableFooterView = UIView()
    }
}

extension PriestContactsViewController:  UITableViewDataSource, UITableViewDelegate{
   
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = HeaderView(frame: CGRect(x:0, y:0, width:tblView.frame.size.width, height: 40))
        headerView.delegate = self
        headerView.secIndex = section
        headerView.btn.setTitle(data[section].headerName, for: .normal)
        return headerView
}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data[section].isExpandable{
        return data[section].subType.count
    }else{
    return 0
    }
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if data[indexPath.section].isExpandable{
            return 50
        }else{
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       let cell = tableView.dequeueReusableCell(withIdentifier: "cells")
        cell?.textLabel?.text = data[indexPath.section].subType[indexPath.row]
        return cell!
}
}
extension PriestContactsViewController:HeaderDelegate{
    func callHeader(idx: Int) {
        data[idx].isExpandable = !data[idx].isExpandable
        tblView.reloadSections([idx], with: .automatic)
    }
}










