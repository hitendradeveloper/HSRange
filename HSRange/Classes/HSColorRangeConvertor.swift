//
//  HSColorRangeConvertor.swift
//  HSRange
//
//  Created by Hitendra Solanki on 04/05/19.
//  Copyright © 2017 Hitendra Solanki. All rights reserved.
//

import Foundation


public struct HSColorRangeConvertor {
  public var range: HSRange!
  public var colorRange: HSColorRange!
}

//MARK:- HSRangeConverter - Initializers
public extension HSColorRangeConvertor {
  init(range: HSRange,
       colorRange: HSColorRange) {
    self.range = range
    self.colorRange = colorRange
  }
}

//MARK:- HSColorRangeConvertor Conversion APIs
public extension HSColorRangeConvertor {
  //Helper functions to convert value of range to color
  func convertToColor(valueFromRange value: Double) -> UIColor {
    return self.colorRange.convert(value: value, inRange: self.range)
  }
}
