//
//  TimeInterval+Helper.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import Foundation

extension TimeInterval {
    
    public var milliseconds: Int{
        return Int((self.truncatingRemainder(dividingBy: 1)) * 1000)
    }
    
    public var seconds: Int{
        return Int(self.remainder(dividingBy: 60))
    }
    
    public var minutes: Int{
        return Int((self/60).remainder(dividingBy: 60))
    }
    
    public var hours: Int{
        return Int(self / (60*60))
    }
    
    public var years: Int{
        return Int(self.years)
    }
    
    public var stringTime: String{
        if self.hours != 0{
            return "\(self.hours)h \(self.minutes)m \(self.seconds)s"
        } else if self.minutes != 0{
            return "\(self.minutes)m \(self.seconds)s"
        } else if self.milliseconds != 0{
            return "\(self.seconds)s \(self.milliseconds)ms"
        } else{
            return "\(self.seconds)s"
        }
    }
}
