//
//  TextStyle.swift
//  AbelKit
//
//  Created by Steve Stomp on 29/10/2017.
//

import UIKit

public struct TextStyle {
    public let font   : UIFont
    public let color  : UIColor
    
    public init(font: UIFont, color: UIColor) {
        self.font  = font
        self.color = color
    }
    
    public var attributes: [NSAttributedStringKey : Any] {
        return [
            NSAttributedStringKey.font              : font,
            NSAttributedStringKey.foregroundColor   : color
        ]
    }
}

