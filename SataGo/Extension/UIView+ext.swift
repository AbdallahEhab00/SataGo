//
//  UIView+ext.swift
//  SataGo
//
//  Created by Abdallah Ehab on 22/07/2022.
//

import UIKit

extension UIView {
    
    func changeTextFaildShapeWith(cornerRadius:CGFloat,borderColor:CGColor,borderWidth:CGFloat){
        
        self.layer.cornerRadius     = cornerRadius
        self.layer.borderColor      = borderColor
        self.layer.borderWidth      = borderWidth
    }
}
