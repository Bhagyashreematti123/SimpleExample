//
//  FaqHeaderView.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 22/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

protocol FaqHeaderDelegate {
    func callHeader(idx:Int)
}

class FaqHeaderView: UIView {
    
    var secIndex : Int?
    var delegate: FaqHeaderDelegate?
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        self.addSubview(btn)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var btn :UIButton = {
        let btn = UIButton(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height))
        btn.backgroundColor = #colorLiteral(red: 0.09332818726, green: 0.4038908276, blue: 0.627419099, alpha: 1)
        btn.titleLabel?.numberOfLines = 0
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.addTarget(self, action:#selector(onClickHeaderView), for: .touchUpInside)
        //btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        return btn
    }()
    
    
    @objc func onClickHeaderView(){
        if let idx = secIndex{
            delegate?.callHeader(idx:idx)
            
            
            
        }
    }
}

