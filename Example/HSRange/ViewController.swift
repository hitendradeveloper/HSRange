//
//  ViewController.swift
//  HSRange
//
//  Created by SOTSYS216 on 10/04/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import UIKit


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
        
        let firstRange = HSRange(low: self.textfieldFirstRangeValue1.text.doubleValue,
                                 high: self.textfieldFirstRangeValue2.text.doubleValue)
        let secondRange = HSRange(low: self.textfieldSecondRangeValue1.text.doubleValue,
                                 high: self.textfieldSecondRangeValue2.text.doubleValue)
        
        let rangeConverter = HSRangeConverter(range1: firstRange,
                                              range2: secondRange)
        let output = rangeConverter.toRange2(of: self.textfieldOutputFirstRange.text.doubleValue)
        self.textfieldOutputSecondRange.text = String(format: "%.0f", [output])
    }
    
    @IBAction func outputSecondRangeValueDidChange(_ sender: UITextField) {
        guard self.textfieldOutputSecondRange.text!.isEmpty == false else{
            self.textfieldOutputFirstRange.text = ""
            return
        }
        
        let firstRange = HSRange(low: self.textfieldFirstRangeValue1.text.doubleValue,
                                 high: self.textfieldFirstRangeValue2.text.doubleValue)
        let secondRange = HSRange(low: self.textfieldSecondRangeValue1.text.doubleValue,
                                  high: self.textfieldSecondRangeValue2.text.doubleValue)
        
        let rangeConverter = HSRangeConverter(range1: firstRange,
                                              range2: secondRange)
        let output = rangeConverter.toRange1(of: self.textfieldOutputSecondRange.text.doubleValue)
        self.textfieldOutputFirstRange.text = String(format: "%.0f", [output])
    }
    
    
    
   
}

