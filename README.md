# HSRange

[![CI](https://github.com/hitendradeveloper/HSRange/actions/workflows/HSRange_CI.yml/badge.svg)](https://github.com/hitendradeveloper/HSRange/actions/workflows/HSRange_CI.yml)
[![Version](https://img.shields.io/cocoapods/v/HSRange.svg?style=flat)](http://cocoapods.org/pods/HSRange)

## Description

<img src="https://github.com/hitendradeveloper/HSRange/blob/master/Assests/HSRange%20Radius%20128.png" alt="HSRange" align="right" />

**HSRangeConvertor** Simple and Elegant Range[A,B] to Range[P,Q] mapper in less then three lines of code.
  E.g.  Suppose we have Range[10,90] and Range[20,80],
        Value 60 of Range[10,90] will be mapped to value 57.5 of Range[20,80].

**HSColorRangeConvertor** Simple and Elegant Range[A,B] to ColorRange[Color1, Color2] mapper in less then five lines of code.


## Demo
<p>
<img src="https://github.com/hitendradeveloper/HSRange/blob/master/Assests/HSRangeDemo.gif" alt="HSRange" align="left" />
<img src="" alt="" />
<img src="https://github.com/hitendradeveloper/HSRange/blob/master/Assests/HSColorRange.gif" alt="HSColorRange" align="" />
<p>



## Example Project

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
| Swift  | XCode | Tag/Pod version |
| --- | ------------- | ------ |
| 4.0 to 5.4 | 9.0 to 12  | 5.4.0 |
| 3.x  | >= 8.x  | 1.1 |



## How to use HSRange | HSRangeConvertor? 
1. Create object of HSRangeConverter by passing two object of HSRange
   - Object of first range [A,B]
   - Object of second range [P,Q]
2. Convert your value from one range to other range.

```Swift
let firstRange = HSRange(low: 10, high: 80)
let secondRange = HSRange(low: 0.5, high: 0.9)

//Step1:
let rangeConverter = HSRangeConverter(range1: firstRange, range2: secondRange)  
        
//Step2:        
let valueInFirstRange = rangeConverter.toRange2(of: 45) //this will give 0.7
let valueInSecondRange = rangeConverter.toRange1(of: 0.9) //this will give 80
```

## How to use HSColorRange | HSColorRangeConvertor? 
Check the demo project. Its has identical steps as above example, just second range is a range of two colors instead of two double values.

## Installation

HSRange is available through [CocoaPods](http://cocoapods.org). To install
it follow below steps. 

1. simply add the following line to your Podfile:

```ruby
pod 'HSRange'
```
2. Open terminal, change your current directory to project directory using `cd`.
3. Install pod.

```ruby
pod install
```
##### Possible Error:
`[!] Unable to find a specification for 'HSRange'` 
##### Solution:

```ruby
pod setup
```

## Major Release
pod version 5.4.0 support swift 4 and swift 5 both as well XCode9 to XCode12 all versions.

## Author

Hitendra Solanki, hitendra.developer@gmail.com | twitter: @hitendrahckr

## License

HSRange is available under the MIT license. See the LICENSE file for more info.
