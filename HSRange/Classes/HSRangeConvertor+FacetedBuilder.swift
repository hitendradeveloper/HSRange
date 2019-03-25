//
//  HSRangeConvertor+FacetedBuilder.swift
//  HSRange
//
//  Created by Hitendra on 25/03/19.
//

import Foundation

//Used to build the HSRangeConvertor instance using Faceted Builder pattern
public class HSRangeConvertorBaseFacetedBuilder {
  private var convertor: HSRangeConverter = HSRangeConverter(
                                      range1: HSRange(low: 0, high: 0),
                                      range2: HSRange(low: 0, high: 0)
                                    )
  public var firstRange: HSRangeConvertorFacetedBuilder {
    return HSRangeConvertorFacetedBuilder(range: convertor.range1)
  }
  public var secondRange: HSRangeConvertorFacetedBuilder {
    return HSRangeConvertorFacetedBuilder(range: convertor.range2)
  }
  public func build() -> HSRangeConverter {
    return convertor
  }
}

//Used to build the HSRange instance using Faceted Builder pattern
public final class HSRangeConvertorFacetedBuilder: HSRangeConvertorBaseFacetedBuilder {
  var range: HSRange!
  
  public override init() {
    self.range = HSRange(low: 0, high: 0)
  }
  
  internal init(range: HSRange){
    self.range = range
    super.init()
  }
  
  public func low(_ value: Double) -> Self {
    range.low = value
    return self
  }
  public func high(_ value: Double) -> Self {
    range.high = value
    return self
  }
}
