//
//  HSRange.swift
//  HSRange
//
//  Created by Hitendra Solanki on 05/07/17.
//  Copyright © 2017 Hitendra Solanki. All rights reserved.
//

import Foundation

//MARK:- Backbone structure behind the scene
public struct HSRange {
    var low: Double!
    var high: Double!
    
    public init(low: Double, high: Double) {
        self.low = low
        self.high = high
    }
}

//MARK:- Helpers
public extension HSRange {
    var mid: Double {
        return (self.low + self.high)/2.0
    }
    func innerValue(value: Double) -> Double {
        return min(max(value,self.low),self.high)
    }
}
