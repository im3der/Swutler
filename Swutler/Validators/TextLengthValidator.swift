//
//  TextLengthValidator.swift
//  Swutler
//
//  Created by Joost van der Waal on 21/09/2017.
//  Copyright © 2017 Steve Stomp. All rights reserved.
//

import UIKit

class TextLengthValidator : NSObject, UITextFieldDelegate {
    
    public let length : Int
    
    public init(_ length: Int) {
        self.length = length
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentString: NSString = textField.text! as NSString
        let newString    : NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= length
    }
}

