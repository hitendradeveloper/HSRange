//
//  HSRange.swift
//  HSRange
//
//  Created by Hitendra Solanki on 05/07/17.
//  Copyright © 2017-2020 Hitendra Solanki. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

//MARK:- Backbone structure behind the scene which acts as Closed range
public struct HSRange {
    public var low: Double!
    public var high: Double!
    
    public init(low: Double, high: Double) {
        self.low = low
        self.high = high
    }
}

//MARK:- HSRange Helpers
public extension HSRange {
    //middle value of the range
    //e.g. Range(-100,100), this will return 0
    var mid: Double {
        return (self.low + self.high)/2.0
    }
    
    //this returns the value inside of range
    //e.g. Range(-100,100),
    //  if you pass -200, this will return -100
    //  if you pass 250, this will return 100
    //  if you pass 80, this will return 80
    //  if you pass -20, this will return -20
    func innerValue(value: Double) -> Double {
        return min(max(value,self.low),self.high)
    }
}

//MARK: HSRange Invart range Help
public extension HSRange {
  var isInvert: Bool {
    return self.low > self.high
  }
  var invartRange: HSRange {
    return HSRange(low: self.high, high: self.low)
  }
  func invartValue(value: Double) -> Double {
    return self.low + self.high - value
  }
}
