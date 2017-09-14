//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UIApplication {
    
    public var applicationVersion:String {
        let bundle = Bundle(for: type(of: self))
        
        return bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    public var applicationBuild:String  {
        let bundle = Bundle(for: type(of: self))
        
        return bundle.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }
    
    public var versionBuild:String  {
        let version = self.applicationVersion
        let build   = self.applicationBuild
        return "version:\(version) build:(\(build))"
    }
}
