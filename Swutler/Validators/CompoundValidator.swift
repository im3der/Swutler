//
//  CompoundValidator.swift
//  Swutler
//
//  Created by Joost van der Waal on 21/09/2017.
//  Copyright © 2017 Steve Stomp. All rights reserved.
//

import Foundation
import UIKit

public class CompoundValidator : NSObject, UITextFieldDelegate {
    
    public let validators : [UITextFieldDelegate]
    
    public init(_ validators : [UITextFieldDelegate]) {
        self.validators = validators
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        for validator in validators {
            
            if validator.textField?(textField, shouldChangeCharactersIn: range, replacementString: string) == false {
                return false
            }
        }
        
        return true
    }
}

