//
//  ImageCell.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    func setVideo(video: Display){
        
       viewImage.image = video.image
       txtLabel.text = video.title
       

}
}
