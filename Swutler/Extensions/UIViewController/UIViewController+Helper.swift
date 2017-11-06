//
//  UIViewController+Helper.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import UIKit

extension UIViewController {
    public func delay(seconds: Double, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
}

