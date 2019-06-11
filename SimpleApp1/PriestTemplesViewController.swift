//
//  PriestTemplesViewController.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class PriestTemplesViewController: UIViewController {

    var videos : [Display] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
    }
    func createArray() -> [Display]{
        var tempVideos : [Display] = []
        
        let templeimg1 = Display(image: UIImage(named:"image1")!,  title: "myImage1")
        let templeimg2 = Display(image: UIImage(named:"image2")!, title: "myImage2")
        let templeimg3 = Display(image: UIImage(named:"image3")!, title: "myImage3")
        let templeimg4 = Display(image: UIImage(named:"image4")!, title: "myImage4")
        let templeimg5 = Display(image: UIImage(named:"image5")!, title: "myImage5")
        let templeimg6 = Display(image: UIImage(named:"image6")!, title: "myImage6")
        let templeimg7 = Display(image: UIImage(named:"image7")!, title: "myImage7")
        let templeimg8 = Display(image: UIImage(named:"image8")!, title: "myImage8")
        let templeimg9 = Display(image: UIImage(named:"image9")!, title: "myImage9")
        let templeimg10 = Display(image: UIImage(named:"image10")!, title: "myImage10")
       
        
        tempVideos.append(templeimg1)
        tempVideos.append(templeimg2)
        tempVideos.append(templeimg3)
        tempVideos.append(templeimg4)
        tempVideos.append(templeimg5)
        tempVideos.append(templeimg6)
        tempVideos.append(templeimg7)
        tempVideos.append(templeimg8)
        tempVideos.append(templeimg9)
        tempVideos.append(templeimg10)
        
        return tempVideos
    }
}
extension  PriestTemplesViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! ImageCell
        cell.setVideo(video:video)
        return cell
    }
    
}

    

