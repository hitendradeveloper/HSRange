//
//  HSColorRange.swift
//  HSRange
//
//  Created by Hitendra on 03/05/19.
//

import Foundation

public struct HSColorRange {
  public var startColor: UIColor!
  public var endColor: UIColor!
  
  
  public init(startColor: UIColor, endColor: UIColor) {
    self.startColor = startColor
    self.endColor = endColor
  }
}
