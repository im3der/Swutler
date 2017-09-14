//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UITableView {
    
    public func showEmpty(image: UIImage, message: String, font: UIFont, textColor: UIColor) {
        
        struct LayoutConstants {
            static let padding   : CGFloat  = 20
            static let imageWidth: CGFloat  = 100
            static let spacing   : CGFloat  = 20
            static let lineHeight: CGFloat  = 1.2
        }
        
        let icon: UIImageView   = UIImageView(image: image)
        icon.frame              = CGRect(x: 0,
                                         y: 0,
                                         width: LayoutConstants.imageWidth,
                                         height: LayoutConstants.imageWidth)
        icon.center             = CGPoint(x: bounds.width * 0.5, y: (bounds.height * 0.3) )
        
        let body: UILabel       = UILabel(frame: CGRect(x: LayoutConstants.padding * 1.5,
                                                        y: 0,
                                                        width: bounds.width - LayoutConstants.padding * 3,
                                                        height: bounds.height))
        body.numberOfLines      = 0
        body.text               = message
        body.font               = font
        body.textColor          = textColor
        body.textAlignment      = .center
        body.center             = CGPoint(x: bounds.width * 0.5, y: icon.center.y + (icon.bounds.height * 0.5) + (LayoutConstants.spacing * 2))
        body.set(lineHeight: LayoutConstants.lineHeight)
        body.sizeToFit()
        
        let wrapper             = UIView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: bounds.height))
        
        wrapper.addSubview(icon)
        wrapper.addSubview(body)
        
        backgroundView = wrapper
    }
    
    public func removeEmptyMessage() {
        backgroundView = nil
    }
}
