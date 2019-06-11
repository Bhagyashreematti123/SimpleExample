//
//  DataModel.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import Foundation

class DataModel {
    var headerName:String?
    var subType = [String]()
    var isExpandable:Bool = false
    
    init(headerName:String, subType:[String],isExpandable:Bool){
        self.headerName = headerName
        self.subType = subType
        self.isExpandable = isExpandable
    }
    
}
