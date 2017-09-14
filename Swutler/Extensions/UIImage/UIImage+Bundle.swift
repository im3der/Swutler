//
//  UIImage+Bundle.swift
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//
//

import UIKit

extension UIImage {
    
    convenience init?(named: String) {
        let bundle = Bundle(for: type(of: self))
        
        self.init(named: named, in: bundle, compatibleWith: nil)
    }
}
