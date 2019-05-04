//
//  HSColorRange.swift
//  HSRange
//
//  Created by Hitendra Solanki on 03/05/19.
//  Copyright © 2017 Hitendra Solanki. All rights reserved.
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
