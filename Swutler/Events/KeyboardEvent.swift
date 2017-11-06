//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

public struct KeyboardEvent {
    public let animationDuration : TimeInterval
    public let animationCurve    : UIViewAnimationCurve
    public let beginFrame        : CGRect
    public let endFrame          : CGRect

    public init?(notification : Notification) {
        guard
                let animationDuration    = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
                let animationCurveNumber = notification.userInfo?[UIKeyboardAnimationCurveUserInfoKey]    as? NSNumber,
                let beginFrameNumber     = notification.userInfo?[UIKeyboardFrameBeginUserInfoKey]        as? NSValue,
                let endFrameNumber       = notification.userInfo?[UIKeyboardFrameEndUserInfoKey]          as? NSValue
                else {
            return nil
        }

        guard
                let animationCurve = UIViewAnimationCurve(rawValue: animationCurveNumber.intValue)
                else {
            return nil
        }

        self.animationCurve    = animationCurve
        self.animationDuration = animationDuration
        self.beginFrame        = beginFrameNumber.cgRectValue
        self.endFrame          = endFrameNumber.cgRectValue
    }

    public func animationOptions() -> UIViewAnimationOptions {
        switch animationCurve {
        case .easeInOut:
            return UIViewAnimationOptions()
        case .easeIn:
            return [.curveEaseIn]
        case .easeOut:
            return [.curveEaseOut]
        case .linear:
            return [.curveLinear]
        }
    }
}
