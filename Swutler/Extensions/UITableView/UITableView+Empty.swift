//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UITableView {
    
    public func showEmpty(image: UIImage, title: String, description: String, titleFont: UIFont = UIFont.systemFont(ofSize: 12), descriptionFont: UIFont = UIFont.systemFont(ofSize: 12), textColor: UIColor? = nil) {
        
        struct LayoutConstants {
            static let padding      : CGFloat  = 40
            static let imageWidth   : CGFloat  = 136
            static let spacing      : CGFloat  = 20
            static let lineHeight   : CGFloat  = 1.5
            static let maxWidth     : CGFloat  = 280
        }
        
        var titleLabel: UILabel = {
            let view            = UILabel()
            view.font           = titleFont
            view.numberOfLines  = 0
            view.text           = title
            view.textColor      = textColor ?? UIColor.black
            view.textAlignment  = .center
            return view
        }()
        
        var descriptionLabel: UILabel = {
            let view            = UILabel()
            view.font           = descriptionFont
            view.numberOfLines  = 0
            view.text           = description
            view.textAlignment  = .center
            view.textColor      = textColor ?? UIColor.black
            view.set(lineHeight: LayoutConstants.lineHeight)
            return view
        }()
        
        let wrapper     = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: frame.height))
        let inner       = UIView(frame: wrapper.frame)
        
            let icon: UIImageView   = UIImageView(image: image)
            icon.contentMode        = .scaleAspectFit
            icon.frame              = CGRect(x: 0,
                                             y: 0,
                                             width: LayoutConstants.imageWidth,
                                             height: LayoutConstants.imageWidth)
            icon.center.x           = bounds.width * 0.5
            
            inner.addSubview(icon)
        

        inner.addSubview(titleLabel)
        inner.addSubview(descriptionLabel)
        
        let titleLabelSize       = titleLabel      .sizeThatFits(CGSize(width: LayoutConstants.maxWidth, height: 0))
        let descriptionLabelSize = descriptionLabel.sizeThatFits(CGSize(width: LayoutConstants.maxWidth, height: 0))
        
        let titleLabelFrame = CGRect(
            origin: CGPoint(x: (bounds.width - LayoutConstants.maxWidth) * 0.5, y: LayoutConstants.imageWidth + LayoutConstants.spacing),
            size: CGSize(width: LayoutConstants.maxWidth, height: titleLabelSize.height)
        )
        
        let descriptionLabelFrame = CGRect(
            origin: CGPoint(x: (bounds.width - LayoutConstants.maxWidth) * 0.5, y: titleLabelSize.height + LayoutConstants.spacing + LayoutConstants.imageWidth + (LayoutConstants.spacing / 4)),
            size: CGSize(width: LayoutConstants.maxWidth, height: descriptionLabelSize.height)
        )
        
        titleLabel      .frame = titleLabelFrame
        descriptionLabel.frame = descriptionLabelFrame

        inner.center.y = bounds.height * 0.5 + LayoutConstants.padding
        wrapper.addSubview(inner)
        
        backgroundView = wrapper
    }
    
    public func removeEmptyMessage() {
        backgroundView = nil
    }
}
