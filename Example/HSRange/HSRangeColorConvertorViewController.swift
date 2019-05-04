//
//  HSRangeColorConvertorViewController.swift
//  HSRange_Example
//
//  Created by Hitendra on 04/05/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import HSRange

class HSRangeColorConvertorViewController: UIViewController {
  
  @IBOutlet weak var slider1: UISlider!
  @IBOutlet weak var slider2: UISlider!
  @IBOutlet weak var slider3: UISlider!
  
  @IBOutlet weak var viewSlider1Container: UIView!
  @IBOutlet weak var viewSlider2Container: UIView!
  @IBOutlet weak var viewSlider3Container: UIView!
  
  var hsColorRangeConvertor1: HSColorRangeConvertor!
  var hsColorRangeConvertor2: HSColorRangeConvertor!
  var hsColorRangeConvertor3: HSColorRangeConvertor!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.navigationBar.prefersLargeTitles = true

    self.generateValuesForSlider1()
    self.generateValuesForSlider2()
    self.generateValuesForSlider3()
  }
  
  @IBAction func slider1ValueDidChange(_ sender: UISlider) {
    self.viewSlider1Container.backgroundColor = self.hsColorRangeConvertor1.convertToColor(valueFromRange: Double(sender.value))
  }
  
  @IBAction func slider2ValueDidChange(_ sender: UISlider) {
    self.viewSlider2Container.backgroundColor = self.hsColorRangeConvertor2.convertToColor(valueFromRange: Double(sender.value))
  }
  
  @IBAction func slider3ValueDidChange(_ sender: UISlider) {
    self.viewSlider3Container.backgroundColor = self.hsColorRangeConvertor3.convertToColor(valueFromRange: Double(sender.value))
  }
}

//MARK:- values setup
extension HSRangeColorConvertorViewController {
  func generateValuesForSlider1(){
    
    self.slider1.minimumValue = 0
    self.slider1.maximumValue = 1
    self.slider1.value = 0
    let hsRangeForSlider1 = HSRange(low: 0, high: 1)
    
    let colorStartForSlider1 = UIColor(red:0.95, green:0.25, blue:0.23, alpha:1.00)
    let colorEndForSlider1 = UIColor(red:1.00, green:0.75, blue:0.20, alpha:1.00)
    
    let colorRangeForSlider1 = HSColorRange(startColor: colorStartForSlider1, endColor: colorEndForSlider1)
    
    self.hsColorRangeConvertor1 = HSColorRangeConvertor(range: hsRangeForSlider1, colorRange: colorRangeForSlider1)
  }
  
  func generateValuesForSlider2(){
    
    self.slider2.minimumValue = 150
    self.slider2.maximumValue = 780
    self.slider2.value = 150
    let hsRangeForSlider2 = HSRange(low: 150, high: 780)
    
    let colorStartForSlider2 = UIColor(red:0.41, green:0.67, blue:0.40, alpha:1.00)
    let colorEndForSlider2 = UIColor(red:0.13, green:0.60, blue:0.94, alpha:1.00)
    
    
    let colorRangeForSlider2 = HSColorRange(startColor: colorStartForSlider2, endColor: colorEndForSlider2)
    
    self.hsColorRangeConvertor2 = HSColorRangeConvertor(range: hsRangeForSlider2, colorRange: colorRangeForSlider2)
  }
  
  func generateValuesForSlider3(){
    
    self.slider3.minimumValue = 80
    self.slider3.maximumValue = 320
    self.slider3.value = 80
    let hsRangeForSlider3 = HSRange(low: 80, high: 320)
    
    let colorStartForSlider3 = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.00)
    let colorEndForSlider3 = UIColor(red:0.47, green:0.33, blue:0.29, alpha:1.00)
    
    let colorRangeForSlider3 = HSColorRange(startColor: colorStartForSlider3, endColor: colorEndForSlider3)
    
    self.hsColorRangeConvertor3 = HSColorRangeConvertor(range: hsRangeForSlider3, colorRange: colorRangeForSlider3)
  }
}
