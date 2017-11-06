//
//  LocalizableTextField.swift
//  BrengFlex
//
//  Created by Joost van der Waal on 26/09/2017.
//  Copyright © 2017 Steve Stomp. All rights reserved.
//

import UIKit

@IBDesignable
open class LocalizableTextField: UITextField {

    @IBInspectable
    public var localizedPlaceholder: String? {
        didSet {
            if let value = localizedPlaceholder {
                placeholder = NSLocalizedString(value, comment: "")
            }
        }
    }
    @IBInspectable
    public var localizedText: String? {
        didSet {
            if let value = localizedText {
                text = NSLocalizedString(value, comment: "")
            }
        }
    }
}
