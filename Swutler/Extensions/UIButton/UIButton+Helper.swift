//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

public extension UIButton {

    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }

        set {
            layer.cornerRadius  = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    public func kern(_ kerningValue:CGFloat) {
        let attributedText =  NSAttributedString(string: self.titleLabel!.text!, attributes: [NSAttributedStringKey.kern:kerningValue, NSAttributedStringKey.font:self.titleLabel!.font, NSAttributedStringKey.foregroundColor:self.titleLabel!.textColor])
        self.setAttributedTitle(attributedText, for: UIControlState())
    }
    
    func roundCorners(_ corners:UIRectCorner, radius: CGFloat) {
        
        var rect = self.bounds
        
        if corners == .topRight || corners == .bottomRight {
            rect = CGRect(x: 0, y: 0, width: rect.width - 1, height: rect.height-1)
        }
        
        let path    = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask    = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    public func animate(button: UIButton, toTitle title: String, textColor: UIColor, duration: CFTimeInterval = 0.5) {
        let transition      = CATransition()
        transition.type     = kCATransitionPush
        transition.subtype  = kCATransitionFromTop
        transition.duration = duration
        
        self.titleLabel?.layer.add(transition, forKey: kCATransition)
        self.setTitle(title, for: .normal)
        self.setTitleColor(textColor, for: .normal)
    }
}
