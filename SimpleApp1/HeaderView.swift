//
//  HeadeView.swift
//  SimpleApp1
//
//  Created by BG1MACMINI023 on 17/05/19.
//  Copyright © 2019 BG1MACMINI023. All rights reserved.
//

import UIKit

protocol HeaderDelegate {
    func callHeader(idx:Int)
}

class HeaderView: UIView {
    
    var secIndex : Int?
    var delegate: HeaderDelegate?
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        self.addSubview(btn)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var btn :UIButton = {
        let btn = UIButton(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height))
        btn.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        btn.titleLabel?.textColor = UIColor.white
        btn.addTarget(self, action:#selector(onClickHeaderView), for: .touchUpInside)
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        return btn
}()

    
    @objc func onClickHeaderView(){
        if let idx = secIndex{
            delegate?.callHeader(idx:idx)
        
    }
}
}


