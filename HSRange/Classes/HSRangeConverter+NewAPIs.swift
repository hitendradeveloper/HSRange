//
//  HSRangeConverter+NewAPIs.swift
//  HSRange
//
//  Created by Hitendra on 20/03/19.
//

import Foundation

//Conversion APIs from Version 5.0
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
