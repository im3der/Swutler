//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UITableView {
    
    public func showEmpty(image: UIImage?, message: String?, font: UIFont = UIFont.systemFont(ofSize: 12), textColor: UIColor? = nil) {
        
        struct LayoutConstants {
            static let padding   : CGFloat  = 20
            static let imageWidth: CGFloat  = 136
            static let spacing   : CGFloat  = 20
            static let lineHeight: CGFloat  = 1.2
        }
        
        let wrapper     = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: frame.height))
        
        if let img = image {
            let icon: UIImageView   = UIImageView(image: img)
            icon.frame              = CGRect(x: self.tableHeaderView?.frame.height ?? 0,
                                             y: LayoutConstants.padding,
                                             width: LayoutConstants.imageWidth,
                                             height: LayoutConstants.imageWidth)
            icon.center.x             =  bounds.width * 0.5
            
            wrapper.addSubview(icon)
        }
        
        let body: UILabel   = UILabel(frame: CGRect(x: LayoutConstants.padding,
                                                        y: 0,
                                                        width: bounds.width - LayoutConstants.padding * 2,
                                                        height: bounds.height))
        body.numberOfLines  = 0
        body.text           = message ?? ""
        body.font           = font
        body.textColor      = textColor ?? UIColor.black
        body.textAlignment  = .center
        body.frame.origin.y = image != nil ? LayoutConstants.padding + LayoutConstants.imageWidth + (LayoutConstants.spacing * 1) : LayoutConstants.padding
        body.set(lineHeight: LayoutConstants.lineHeight)
        body.sizeToFit()
        body.center.x       = bounds.width * 0.5
        
        wrapper.addSubview(body)
        
        backgroundView = wrapper
    }
    
    public func removeEmptyMessage() {
        backgroundView = nil
    }
}
