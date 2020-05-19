//
//  HSRangeTests.swift
//  HSRange_Tests
//
//  Created by Hitendra Solanki on 17/05/20.
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

import XCTest
@testable import HSRange

class HSRangeTests: XCTestCase {
    
    func test_initializer() {
        let low: Double = 10;
        let high: Double = 20;
        let range = HSRange(low: low, high: high)
        
        XCTAssert(range.low == low, "range.low must be \(low) [found \(String(describing: range.low)).]")
        
        XCTAssert(range.high == high, "range.high must be \(high) [found \(String(describing: range.high)).]")
    }
    
    func test_mid() {
        let range = HSRange(low: 10, high: 20)
        let expectedMid: Double = 15;
        
        XCTAssert(range.mid == expectedMid, "range.mid must be \(expectedMid) [found \(String(describing: range.mid)).]")
    }
    
    func test_innerValue() {
        let range = HSRange(low: 10, high: 20)
        
        do {
            let expectedInnerValue: Double = 12
            let result = range.innerValue(value: 12)
            XCTAssert(result == expectedInnerValue, "result must be \(expectedInnerValue) [found \(String(describing: result)).]")
        }
        
        do {
            let expectedInnerValue: Double = 18.5
            let result = range.innerValue(value: 18.5)
            XCTAssert(result == expectedInnerValue, "result must be \(expectedInnerValue) [found \(String(describing: result)).]")
        }
        
        do {
            let expectedInnerValue: Double = 20
            let result = range.innerValue(value: 25)
            XCTAssert(result == expectedInnerValue, "result must be \(expectedInnerValue) [found \(String(describing: result)).]")
        }
        
        do {
            let expectedInnerValue: Double = 10
            let result = range.innerValue(value: 7.5)
            XCTAssert(result == expectedInnerValue, "result must be \(expectedInnerValue) [found \(String(describing: result)).]")
        }
    }
    
    func test_isInvert() {
        
        do {
            let range = HSRange(low: 10, high: 20)
            let expectedResult = false
            let result = range.isInvert
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(String(describing: result)).]")
        }
        
        do {
            let range = HSRange(low: 22, high: 8)
            let expectedResult = true
            let result = range.isInvert
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(String(describing: result)).]")
        }
        
        do {
            let range = HSRange(low: 22, high: -50)
            let expectedResult = true
            let result = range.isInvert
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(String(describing: result)).]")
        }
        
        do {
            let range = HSRange(low: -10, high: 80)
            let expectedResult = false
            let result = range.isInvert
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(String(describing: result)).]")
        }
    }
    
    func test_invartRange() {
        do {
            let low: Double = 10;
            let high: Double = 20;
            let range = HSRange(low: low, high: high)
            
            let result = range.invartRange
            let expectedResult = HSRange(low: high, high: low)
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
        
        do {
            let low: Double = -10;
            let high: Double = -20;
            let range = HSRange(low: low, high: high)
            
            let result = range.invartRange
            let expectedResult = HSRange(low: high, high: low)
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
    }
    
    func test_invartValue() {
        do {
            let range = HSRange(low: 10, high: 20)
            
            let result = range.invartValue(value: 12)
            let expectedResult: Double = 18
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
        
        do {
            let range = HSRange(low: 10, high: 20)
            
            let result = range.invartValue(value: 13)
            let expectedResult: Double = 17
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
        
        do {
            let range = HSRange(low: 10, high: 20)
            
            let result = range.invartValue(value: 15)
            let expectedResult: Double = 15
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
        
        do {
            let range = HSRange(low: 10, high: 20)
            
            let result = range.invartValue(value: 2)
            let expectedResult: Double = 28
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }
        
        do {
            let range = HSRange(low: 10, high: 20)
            
            let result = range.invartValue(value: -5)
            let expectedResult: Double = 35
            
            XCTAssert(result == expectedResult, "result must be \(expectedResult) [found \(result).]")
        }

    }
}
