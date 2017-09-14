//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

public enum Position : Int
{
    case left = 0
    case right = 1
}

extension UIViewController {

    public func addBarButton(title: String, action: Selector, position: Position) {
        let bt = UIBarButtonItem(title: title, style: .plain, target: self, action: action)
        
        if position == .left {
            self.navigationItem.setLeftBarButton(bt, animated: true)
        } else {
            self.navigationItem.setRightBarButton(bt, animated: true)
        }
    }

    public func addBarButton(image: UIImage?, action: Selector, position: Position) {
        guard let img = image else {
            addBarButton(title: "Image missing", action: action, position: position)
            return
        }
        
        let bt = UIBarButtonItem(image: img, style: .plain, target: self, action: action)
        
        if position == .left {
            self.navigationItem.setLeftBarButton(bt, animated: true)
        } else {
            self.navigationItem.setRightBarButton(bt, animated: true)
        }
    }
}
