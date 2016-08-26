//
//  Neo.swift
//  tincan-sdk
//
//  Created by Angad Nadkarni on 26/08/16.
//  Copyright © 2016 Hullo Technologies Pvt. Ltd. All rights reserved.
//

import Foundation
var __neo__: [String: AnyObject] = [:]

func Neo<T: AnyObject>(obj: T, tag: String) -> T {
    if let ret = __neo__[tag] {
        return ret as! T
    }
    
    __neo__[tag] = obj
    return obj
}

func Neo<T: AnyObject>(obj: T) -> T {
    return Neo(obj, tag: String(obj.dynamicType))
}
