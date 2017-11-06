//
//  ValidCharacterValidator.swift
//  Swutler
//
//  Created by Joost van der Waal on 21/09/2017.
//  Copyright © 2017 Code & Coding B.V. All rights reserved.
//

import UIKit

class ValidCharactersValidator : NSObject, UITextFieldDelegate {
    
    public let regEx : String
    
    public init(regEx: String) {
        self.regEx = regEx
    }
    
    // MARK: - Validation
    private func validCharacters(character: String) -> Bool {
        
        let test = NSPredicate(format:"SELF MATCHES %@", regEx)
        return test.evaluate(with: character)
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentString: NSString = textField.text! as NSString
        let newString    : NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        
        return validCharacters(character: newString as String)
    }
    
}

