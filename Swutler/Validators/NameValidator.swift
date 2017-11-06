//
//  NameValidator.swift
//  Swutler
//
//  Created by Joost van der Waal on 21/09/2017.
//  Copyright © 2017 Code & Coding B.V. All rights reserved.
//

import Foundation

public class NameValidator : CompoundValidator {
    
    public static let shared = NameValidator()
    
    public init() {
        super.init([TextLengthValidator(30), ValidCharactersValidator(regEx: "[A-Z0-9a-z\\s-]*")])
    }
}


