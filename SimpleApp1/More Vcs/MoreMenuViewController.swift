//
//  MoreMenuViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 21/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class Display1{
    var image : UIImage
    var title : String
    
    init(image:UIImage,title:String){
        self.image = image
        self.title = title
    }
}
class MoreMenuViewController: UIViewController {
    
    @IBOutlet weak var moreView: UIView!
    var values : [Display1] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        values = createArray()
        }
    func createArray() -> [Display1]{
        var temp: [Display1] = []
        
        let img1 = Display1(image: UIImage(named:"Arbic")!,  title: "myImage1")
        let img2 = Display1(image: UIImage(named:"MyProfile")!, title: "My Profile")
        let img3 = Display1(image: UIImage(named:"Change-password")!, title: "Change Password")
        let img4 = Display1(image: UIImage(named:"Contact")!, title: "Contact")
        let img5 = Display1(image: UIImage(named:"FAQ")!, title: "FAQ")
        let img6 = Display1(image: UIImage(named:"Locate-Us")!, title: "Locate Us")
        let img7 = Display1(image: UIImage(named:"Main-Site")!, title: "Main Site")
        let img8 = Display1(image: UIImage(named:"Social-Media")!, title: "Social Media")
        let img9 = Display1(image: UIImage(named:"Call_US")!, title: "Call Us")
        temp.append(img1)
        temp.append(img2)
        temp.append(img3)
        temp.append(img4)
        temp.append(img5)
        temp.append(img6)
        temp.append(img7)
        temp.append(img8)
        temp.append(img9)
        return temp
    }
}
extension  MoreMenuViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let img1 = values[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "moreCell") as! MoreCell
        cell.setImages(img:img1)
        return cell
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 75.0
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 3
        {
            let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContactUsViewController") as!ContactUsViewController
            self.navigationController?.pushViewController(con, animated: true)
            
        }
        else if indexPath.row == 2
        {
            let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChangePasswordViewController") as!ChangePasswordViewController
            self.navigationController?.pushViewController(con, animated: true)
        }
        else if indexPath.row == 4
        {
            let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FaqViewController") as! FaqViewController
            self.navigationController?.pushViewController(con, animated: true)
        }
        else if indexPath.row == 1
        {
            let con = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(con, animated: true)
        }
        else{
            
        }
        }
       
    }
        
        
    
    


