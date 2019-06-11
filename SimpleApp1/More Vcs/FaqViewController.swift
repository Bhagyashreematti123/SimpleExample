//
//  FaqViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 22/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class FaqViewController: UIViewController {
    
    @IBOutlet weak var faqLabel: UILabel!
    @IBOutlet weak var tblView: UITableView!
    var selectedIndex = -1
    
    var data = [
        FaqModel(faqQuestion: "How do I search SAR station",  faqAnswer:["You can view the station location maps available on www.sar.com.sa or on the SAR mobile app."], isExpandable: false),
        FaqModel(faqQuestion: "How dO I receive my ticket after payment?",  faqAnswer: ["You'll receive an email with your ticket confirmation and a SMS notification with your ticket."], isExpandable: false),
        FaqModel(faqQuestion: "What if I miss my train?",  faqAnswer: ["If you dont arrive in time for your train, your booking will be cancelled and no refund due."], isExpandable: false),
        FaqModel(faqQuestion: "How can I reserve a ticket?", faqAnswer: ["Bookings can be made using SAR mobile app, online at www.sar.com.sa or in a person at any SAR station. Reservations can also made by calling 920000329"], isExpandable: false),
        FaqModel(faqQuestion: "Can i reserve a seat when I buy a ticket?", faqAnswer: ["Yes, You will select your seat as part of the booking process"], isExpandable: false),
        FaqModel(faqQuestion: "Can I check in larger baggage such as sports equipment?", faqAnswer: ["Sorry we are unable to accept larger/out size baggage"], isExpandable: false),
        FaqModel(faqQuestion: "Do I have to book a seat for my infant?", faqAnswer: ["If you are travelling with an infant under 2 years old, they will not receive a seat reservation.Infants may use a seat, if its not occupied by a fare-paying customer.Alternatively you can buy a child ticket for your infant and reserve a seat for their journey."], isExpandable: false),
        FaqModel(faqQuestion: "What documents Do I need when travelling?", faqAnswer: ["All customers must carry their saudi ID/Iqama or passport with them while travelling."], isExpandable: false),
        FaqModel(faqQuestion: "Can my pet travel with SAR?", faqAnswer: ["No pets are permitted to travel with SAR"], isExpandable: false),
        FaqModel(faqQuestion: "Do children pay full fare?", faqAnswer: ["No children aged 2-15 year aged travelling in economy pay half fare, and 1/3 off in busines class. Infants under 2 can travell for fre  with SAR, but they will not receive a seat reservation"], isExpandable: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.tableFooterView = UIView()
        setUpTableViewDelegates()
    }
        
    private func setUpTableViewDelegates() {
        tblView.dataSource = self
        tblView.delegate = self
        tblView.estimatedRowHeight = 60.0
        tblView.estimatedSectionHeaderHeight = 44.0
        tblView.sectionHeaderHeight = UITableView.automaticDimension
    }
    //    func updateTableViewContentInset() {
    //        let viewHeight: CGFloat = view.frame.size.height
    //        let tableViewContentHeight: CGFloat = tblView.contentSize.height
    //        let marginHeight: CGFloat = (viewHeight - tableViewContentHeight) / 2.0
    //
    //        self.tblView.contentInset = UIEdgeInsets(top: marginHeight, left: 0, bottom:  -marginHeight, right: 0)
    //    }
    
}

extension FaqViewController : UITableViewDelegate , UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = FaqHeaderView(frame: CGRect(x: 0, y: 0, width: tblView.frame.width, height: 40))
        headerView.delegate = self
        headerView.btn.contentHorizontalAlignment = .left
        headerView.secIndex = section
        headerView.btn.setTitle(data[section].faqQuestion, for: .normal)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data[section].isExpandable{
            return data[section].faqAnswer.count
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byTruncatingTail
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "faqCell")
        if data[indexPath.section].isExpandable {
             cell?.textLabel?.textAlignment = .left
            cell?.textLabel?.text = data[indexPath.section].faqAnswer[indexPath.row]
           
       }else {
           cell?.textLabel?.text = ""
        }
        return cell!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if data[indexPath.section].isExpandable{
            return UITableView.automaticDimension
        }else{
            return 20
        }
    }
}
extension FaqViewController : FaqHeaderDelegate {
    func callHeader(idx: Int) {
        if idx == selectedIndex {
            data[idx].isExpandable = !data[idx].isExpandable
        } else {
            for dataObj in data {
                dataObj.isExpandable = false
            }
            data[idx].isExpandable = true
        }
        selectedIndex = idx
        tblView.reloadData()
        //tblView.reloadSections([idx], with: .automatic)
    }
}






