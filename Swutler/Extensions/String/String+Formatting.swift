//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension String {
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    public var capitalizeFirst: String {
        if self.characters.count == 0 {
            return self
        }
        return String(self[self.startIndex]).capitalized + String(self.characters.dropFirst())
    }
}
