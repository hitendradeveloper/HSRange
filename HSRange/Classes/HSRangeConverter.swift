//
//  HSRange.swift
//  HSRange
//
//  Created by Hitendra Solanki on 05/07/17.
//  Copyright © 2017 Hitendra Solanki. All rights reserved.
//

import Foundation

//MARK:- HSRangeConverter
public struct HSRangeConverter {
    public var range1: HSRange!
    public var range2: HSRange!
}

//MARK:- HSRangeConverter - Initializers
public extension HSRangeConverter {
  init(range1: HSRange,
       range2: HSRange) {
    self.range1 = range1
    self.range2 = range2
  }
  
  init( range1low: Double, range1high: Double,
        range2low: Double, range2high: Double) {
    self.range1 = HSRange(low: range1low, high: range1high)
    self.range2 = HSRange(low: range2low, high: range2high)
  }
}

//MARK:- HSRangeConverter - Conversion APIs from Version 5.0
public extension HSRangeConverter {
  //Helper functions to convert value of range1 to range2
  func convertToRange2(valueFromRange1 value: Double) -> Double {
    let result = self.convert(a: self.range1.low!, b: self.range1.high!,
                              value: value,
                              c: self.range2.low!, d: self.range2.high!);
    return self.range2.innerValue(value: result)
  }
  
  //Helper functions to convert value of range2 to range1
  func convertToRange1(valueFromRange2 value: Double) -> Double {
    let result = self.convert(a: self.range2.low!, b: self.range2.high!,
                              value: value,
                              c: self.range1.low!, d: self.range1.high!);
    return self.range1.innerValue(value: result)
  }
}

//MARK:- HSRangeConverter - Deprecated Conversion APIs upto version 4.2
public extension HSRangeConverter {
  @available(*, deprecated, renamed: "convertToRange2(valueFromRange1:)")
  func toRange2(of value: Double) -> Double {
    return self.convertToRange2(valueFromRange1: value)
  }
  
  @available(*, deprecated, renamed: "convertToRange1(valueFromRange2:)")
  func toRange1(of value: Double) -> Double {
    return self.convertToRange1(valueFromRange2: value)
  }
}

//MARK:- HSRangeConverter - //Core logic behind conversion
internal extension HSRangeConverter {
  func convert(a: Double, b: Double, value: Double, c: Double, d: Double) -> Double{
    let v1 = (value - a) * (d - c);
    let v2 = v1 / (b - a)
    return v2 + c
  }
}
