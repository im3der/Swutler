//
//  UITableView+Reload.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import Foundation

extension UITableView {
    
    public func reloadData(_ completion: @escaping ()->Void) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() }, completion: { _ in completion() })
    }
    
}
