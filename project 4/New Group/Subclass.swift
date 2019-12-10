//
//  Subclass.swift
//  project 4
//
//  Created by COE-05 on 06/09/19.
//  Copyright © 2019 COE-05. All rights reserved.
//

import UIKit

class subclass: UITextField {
    
    //Only override draw() if you perform custom drawing.
    //An empty implementation adversely affects performance during animation.
    
    //Create method for design layer at bottom border
    
    func SetBottomBorder(){
        //creat layer
        
       let bottomLine = CALayer()
    
        //
        bottomLine.frame = CGRect.init(x: 0.0, y: self.frame.height-1, width:self.frame.width, height: 1.0)
        
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        
        self.borderStyle = UITextBorderStyle.none
        
        self.layer.sublayers?.removeAll()
        self.layer.addSublayer(bottomLine)
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        SetBottomBorder()
        
    }
    
    required init? (coder aDecoder:NSCoder){
        super.init(coder:aDecoder)
        
        SetBottomBorder()
        
        //fatalError("init(coder:)has not been implemented")
        
    }
    
    func draw(_rect:CGRect){
        //Drawing code
        SetBottomBorder()
        
    }


}
