//
//  DynamicLabelSize.swift
//  DynamicUILabelHeight
//
//  Created by Alex Nagy on 02/03/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class DynamicLabelSize {
    
    static func height(text: String?, font: UIFont, width: CGFloat) -> CGFloat {
        
        var currentHeight: CGFloat!
        
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.sizeToFit()
        
        currentHeight = label.frame.height
        label.removeFromSuperview()
        
        return currentHeight
    }
    
}
