//
//  FaqModel.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 22/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//
import Foundation

class FaqModel {
    var faqQuestion: String?
    var faqAnswer = [String]()
    var isExpandable:Bool = false
    
    init(faqQuestion: String, faqAnswer:[String],isExpandable:Bool){
        self.faqQuestion = faqQuestion
        self.faqAnswer = faqAnswer
        self.isExpandable = isExpandable
    }
    
}


