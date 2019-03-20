//
//  HSRangeConverter+Deprecations.swift
//  HSRange
//
//  Created by Hitendra on 20/03/19.
//

import Foundation

//Conversion APIs upto version 4.2
public extension HSRangeConverter {
  //Helper functions to convert value of range1 to range2
  @available(*, deprecated, renamed: "convertToRange2(valueFromRange1:)")
  func toRange2(of value: Double) -> Double {
    return self.convertToRange2(valueFromRange1: value)
  }
  
  //Helper functions to convert value of range2 to range1
  @available(*, deprecated, renamed: "convertToRange1(valueFromRange2:)")
  func toRange1(of value: Double) -> Double {
    return self.convertToRange1(valueFromRange2: value)
  }
}
