//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UITableViewCell {

    public static var defaultReuseIdentifier : String {
        return "\(self)"
    }
    
    public static func register(on tableView: UITableView) {
    
        tableView.register(UINib(nibName: defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: defaultReuseIdentifier)
    }
    
}
