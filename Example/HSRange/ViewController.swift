//
//  ViewController.swift
//  HSRange
//
//  Created by SOTSYS216 on 10/04/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import UIKit
//import HSRange

extension Optional where Wrapped == String {
    var doubleValue: Double {
        return NSString(string: self ?? "").doubleValue
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var textfieldFirstRangeValue1: UITextField!
    @IBOutlet weak var textfieldFirstRangeValue2: UITextField!
    
    @IBOutlet weak var textfieldSecondRangeValue1: UITextField!
    @IBOutlet weak var textfieldSecondRangeValue2: UITextField!
    
    @IBOutlet weak var textfieldOutputFirstRange: UITextField!
    @IBOutlet weak var textfieldOutputSecondRange: UITextField!
    
    var isFirstAndSecondRangeAllValuesAvailable: Bool! {
        if self.textfieldFirstRangeValue1.text!.isEmpty ||
        self.textfieldFirstRangeValue1.text!.isEmpty ||
        self.textfieldFirstRangeValue1.text!.isEmpty ||
            self.textfieldFirstRangeValue1.text!.isEmpty {
            return false;
        }
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func inputRangeValueDidChange(_ sender: UITextField) {
        self.textfieldOutputFirstRange.isEnabled = self.isFirstAndSecondRangeAllValuesAvailable
        self.textfieldOutputSecondRange.isEnabled = self.isFirstAndSecondRangeAllValuesAvailable
    }
    
    
    @IBAction func outputFirstRangeValueDidChange(_ sender: UITextField) {
        
        guard self.textfieldOutputFirstRange.text!.isEmpty == false else{
            self.textfieldOutputSecondRange.text = ""
            return
        }
      
//    Hitendra Solanki:
//        older intializer: HSRangeConverter using older intializer which requires temporary variables of HSRange
//        let firstRange = HSRange(low: self.textfieldFirstRangeValue1.text.doubleValue,
//                                 high: self.textfieldFirstRangeValue2.text.doubleValue)
//        let secondRange = HSRange(low: self.textfieldSecondRangeValue1.text.doubleValue,
//                                 high: self.textfieldSecondRangeValue2.text.doubleValue)
//
//        let rangeConverter = HSRangeConverter(range1: firstRange,
//                                              range2: secondRange)
//        let output = rangeConverter.toRange2(of: self.textfieldOutputFirstRange.text.doubleValue) //older API
      
      
//    Hitendra Solanki:
//        Newer intializer: HSRangeConverter using newer intializer which doesn't requires any temporary variables of HSRange
      let rangeConverter = HSRangeConverter(range1low: self.textfieldFirstRangeValue1.text.doubleValue,
                                            range1high: self.textfieldFirstRangeValue2.text.doubleValue,
                                            range2low: self.textfieldSecondRangeValue1.text.doubleValue,
                                            range2high: self.textfieldSecondRangeValue2.text.doubleValue)
      let output = rangeConverter.convertToRange2(valueFromRange1: self.textfieldOutputFirstRange.text.doubleValue)
      
      
        self.textfieldOutputSecondRange.text = "\(output)" //String(format: "%.2f", [output])
    }
    
    @IBAction func outputSecondRangeValueDidChange(_ sender: UITextField) {
        guard self.textfieldOutputSecondRange.text!.isEmpty == false else{
            self.textfieldOutputFirstRange.text = ""
            return
        }
        
//          Hitendra Solanki:
//              older intializer: HSRangeConverter using older intializer which requires temporary variables of HSRange
              let firstRange = HSRange(low: self.textfieldFirstRangeValue1.text.doubleValue,
                                       high: self.textfieldFirstRangeValue2.text.doubleValue)
              let secondRange = HSRange(low: self.textfieldSecondRangeValue1.text.doubleValue,
                                       high: self.textfieldSecondRangeValue2.text.doubleValue)
      
              let rangeConverter = HSRangeConverter(range1: firstRange,
                                                    range2: secondRange)
      
      
//    Hitendra Solanki:
//        Newer Builder: HSRangeConverter using HSRangeConvertorFacetedBuilder[FacetedBuilder Pattern]
//        let builder = HSRangeConvertorFacetedBuilder()
//        let rangeConverter = builder
//            .firstRange
//              .low(self.textfieldFirstRangeValue1.text.doubleValue)
//              .high(self.textfieldFirstRangeValue2.text.doubleValue)
//            .secondRange
//              .low(self.textfieldSecondRangeValue1.text.doubleValue)
//              .high(self.textfieldSecondRangeValue2.text.doubleValue)
//            .build()
      
        let output: Double = rangeConverter.convertToRange1(valueFromRange2: self.textfieldOutputSecondRange.text.doubleValue)
      
        self.textfieldOutputFirstRange.text = "\(output)" //String(format: "%.2f", [output])
    }
    
    
    
   
}

