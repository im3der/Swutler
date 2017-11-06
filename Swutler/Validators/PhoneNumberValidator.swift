//
//  PhoneNumberValidator.swift
//  Swutler
//
//  Created by Joost van der Waal on 21/09/2017.
//  Copyright © 2017 Steve Stomp. All rights reserved.
//

public class PhoneNumberValidator : CompoundValidator {
    
    public static let shared = PhoneNumberValidator()
    
    public init() {
        super.init([TextLengthValidator(15), ValidCharactersValidator(regEx: "[+0-9]*")])
    }
}


