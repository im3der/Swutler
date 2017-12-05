//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UIApplication {
    
    public var applicationVersion:String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    }
    
    public var applicationBuild:String  {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as! String
    }
    
    public var versionBuild:String  {
        let version = self.applicationVersion
        let build   = self.applicationBuild
        return "\(version) (\(build))"
    }
    
    public class func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
}
