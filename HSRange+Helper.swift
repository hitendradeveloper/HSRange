//
//  HSRange+Helper.swift
//  HSRange
//
//  Created by Hitendra on 03/05/19.
//

import Foundation

public extension HSRange {
  var isInvert: Bool {
    return self.low >= self.high
  }
  var invartRange: HSRange {
    return HSRange(low: self.high, high: self.low)
  }
  func invartValue(value: Double) -> Double {
    return (self.isInvert ? self.low : self.high) - value
  }
}
