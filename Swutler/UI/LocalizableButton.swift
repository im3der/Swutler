//
//  LocalizableButton.swift
//  CareOV
//
//  Created by Joost van der Waal on 22/05/2017.
//
//

import UIKit

@IBDesignable
open class LocalizableButton: UIButton {

    @IBInspectable
    public var localizedTitle: String? {
        didSet {
            if let value = localizedTitle {
                let title = NSLocalizedString(value, comment: "")
                self.titleLabel?.text = title
                self.setTitle(title, for: .normal)
            } else {
                self.setTitle("", for: .normal)
            }
        }
    }
}
