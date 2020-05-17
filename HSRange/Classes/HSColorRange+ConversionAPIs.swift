//
//  HSColorRange+ConversionAPIs.swift
//  HSRange
//
//  Created by Hitendra Solanki on 03/05/19.
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

public extension HSColorRange {
  //Core logic behind color conversion
  func convert(value: Double, inRange range: HSRange) -> UIColor {
    
    let startColorComponents = self.startColor.colorComponents!
    let endColorComponents = self.endColor.colorComponents!
    
    let redRange = HSRange(low: startColorComponents.red, high: endColorComponents.red)
    let greenRange = HSRange(low: startColorComponents.green, high: endColorComponents.green)
    let blueRange = HSRange(low: startColorComponents.blue, high: endColorComponents.blue)
    
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
    guard let components = self.cgColor.components else {
      fatalError("\n\n\n HSColorComponent: Color has nil components using 'self.cgColor.components' \n UIColor:= \(self)")
    }
    
    return HSColorComponent(
      red: Double(components[0]),
      green: Double(components[1]),
      blue: Double(components[2]),
      alpha: Double(components[3])
    )
  }
}

