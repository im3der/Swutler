//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UILabel {
    
    public func set(lineHeight: CGFloat) {
        
        let paragraphStyle                  = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing          = 1.0
        paragraphStyle.lineHeightMultiple   = lineHeight
        paragraphStyle.alignment            = self.textAlignment
        
        let attrString = NSMutableAttributedString(string: self.text!)
        attrString.addAttribute(NSFontAttributeName, value: self.font, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        self.attributedText = attrString
    }
    
    public func kern(_ kerningValue:CGFloat) {
        let attributedText =  NSAttributedString(string: self.text!, attributes: [NSKernAttributeName:kerningValue, NSFontAttributeName:self.font, NSForegroundColorAttributeName:self.textColor])
        self.attributedText = attributedText
    }
}
