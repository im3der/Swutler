//
//  NumericHelper.swift
//  AbelKit
//
//  Created by Steve Stomp on 29/10/2017.
//

import UIKit

let π = CGFloat(Double.pi)

extension Double {
    public func radiansToDegrees() -> Double {
        return self * 180 / .pi
    }
    
    public func degreesToRadians() -> Double {
        return self * .pi / 180
    }
    
    /// Rounds the double to decimal places value
    public func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
    public func toCurrencyString() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "nl_NL")
        return formatter.string(from: NSNumber(value: self))!
    }
}

extension CGFloat {
    public func radiansToDegrees() -> CGFloat {
        return self * π / 180.0
    }
    
    public func degreesToRadians() -> CGFloat {
        return self * 180.0 / π
    }
}

