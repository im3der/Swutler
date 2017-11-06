//
//  String+Helper.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import Foundation

extension String {
    
    // MARK: - Helpers
    public func contains(_ find: String) -> Bool{
        return self.range(of: find) != nil
    }

    public func split(_ delimiter:String?="", limit:Int=0) -> [String] {
        let arr = self.components(separatedBy: (delimiter != nil ? delimiter! : ""))
        return Array(arr[0..<(limit > 0 ? min(limit, arr.count) : arr.count)])
    }
}
