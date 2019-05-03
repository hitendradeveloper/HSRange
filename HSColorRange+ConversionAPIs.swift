//
//  HSColorRange+ConversionAPIs.swift
//  HSRange
//
//  Created by Hitendra on 03/05/19.
//

import Foundation

public extension HSColorRange {
  //Core logic behind color conversion
  func convert(value: Double, inRange range: HSRange) -> UIColor {
    
    let startColorComponent = self.startColor.colorComponents!
    let endColorComponent = self.endColor.colorComponents!
    
    let redRange = HSRange(low: startColorComponent.red, high: endColorComponent.red)
    let greenRange = HSRange(low: startColorComponent.green, high: endColorComponent.green)
    let blueRange = HSRange(low: startColorComponent.blue, high: endColorComponent.blue)
    
    let redConvertor = HSRangeConverter(
      range1: range,
      range2: redRange.isInvert ? redRange.invartRange : redRange
    )
    let greenConvertor = HSRangeConverter(
      range1: range,
      range2: greenRange.isInvert ? greenRange.invartRange : greenRange
    )
    let blueConvertor = HSRangeConverter(
      range1: range,
      range2: blueRange.isInvert ? blueRange.invartRange : blueRange
    )
    
    let redValue = redConvertor.convertToRange2(valueFromRange1: value)
    let greenValue = greenConvertor.convertToRange2(valueFromRange1: value)
    let blueValue = blueConvertor.convertToRange2(valueFromRange1: value)
    
    let floatValueRed = CGFloat( redRange.isInvert ? redRange.invartValue(value: redValue) : redValue )
    let floatValueGreen = CGFloat(greenRange.isInvert ? greenRange.invartValue(value: greenValue) : greenValue)
    let floatValueBlue = CGFloat(blueRange.isInvert ? blueRange.invartValue(value: blueValue) : blueValue)
    
    return UIColor(red: floatValueRed,
                   green: floatValueGreen,
                   blue: floatValueBlue,
                   alpha: 1.0)
  }
}



fileprivate extension UIColor {
  
  struct HSColorComponent {
    var red: Double
    var green: Double
    var blue: Double
    var alpha: Double
  }
  
  var colorComponents: HSColorComponent? {
    guard let components = self.cgColor.components else { return nil }
    return HSColorComponent(
      red: Double(components[0]),
      green: Double(components[1]),
      blue: Double(components[2]),
      alpha: Double(components[3])
    )
  }
}

