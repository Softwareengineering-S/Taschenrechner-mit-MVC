//
//  CalculateModel.swift
//  Taschenrechner 3
//
//  Created by Christian on 15.08.18.
//  Copyright © 2018 codingenieur. All rights reserved.
//

import Foundation

class CalculateModel {
    
    // Eigenschaften / Properties / Attribute
    var sign: String?
    var firstnumber : Double =  0
    var secondnumber : Double = 0
    var result :  Double = 0
    
    // init
    init(sign: String?) {
        self.sign = sign
    }
    
    // Methoden "Funktionen"
    func calculate() {
        if sign != nil {
            switch sign! {
            case "+": result = firstnumber + secondnumber
            case "-": result = firstnumber - secondnumber
            case "x": result = firstnumber * secondnumber
            case "÷": result = firstnumber / secondnumber
            default: break
            }
        }
    }
    
    func resetCalculator() {
        firstnumber = 0
        secondnumber = 0
        result = 0
        sign = nil
    }
    
}
