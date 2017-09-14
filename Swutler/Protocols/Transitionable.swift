//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import Foundation

public protocol Transitionable {
    func transitionIn(_ completion: (() -> Void)?)
    func transitionOut(_ completion: (() -> Void)?)
}
