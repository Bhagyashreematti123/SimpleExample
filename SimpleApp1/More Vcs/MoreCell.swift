//
//  MoreCell.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 21/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

class MoreCell: UITableViewCell {

    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    
    func setImages(img: Display1){
        viewImage.image = img.image
        txtLabel.text = img.title
    }
}


