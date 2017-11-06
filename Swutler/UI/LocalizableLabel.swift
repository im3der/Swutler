//
//  LocalizableLabel.swift
//  CareOV
//
//  Created by Joost van der Waal on 23/05/2017.
//
//

import UIKit

@IBDesignable
open class LocalizableLabel: UILabel {

    @IBInspectable
    public var localizedTitle: String? {
        didSet {
            if let value = localizedTitle {
                self.text = NSLocalizedString(value, comment: "")
            } else {
                self.text = ""
            }
        }
    }
}
