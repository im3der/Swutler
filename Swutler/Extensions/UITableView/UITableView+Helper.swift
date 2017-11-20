//
//  UITableView+Reload.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import Foundation

public extension UITableView {
    
    public func reloadData(_ completion: @escaping ()->Void) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() }, completion: { _ in completion() })
    }

    public func dequeue<Cell>() -> Cell where Cell : UITableViewCell {
        if let cell = self.dequeueReusableCell(withIdentifier: Cell.defaultReuseIdentifier) as? Cell {
            return cell
        }
        
        Cell.register(on: self)
        
        return self.dequeueReusableCell(withIdentifier: Cell.defaultReuseIdentifier) as! Cell
    }
}

