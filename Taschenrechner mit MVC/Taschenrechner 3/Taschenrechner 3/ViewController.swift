//
//  ViewController.swift
//  Taschenrechner 3
//
//  Created by Christian on 04.08.18.
//  Copyright © 2018 codingenieur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var calculator = CalculateModel(sign: nil)
    
    var userIsTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func keypadTapped(_ sender: UIButton) {
        let key = sender.currentTitle!
        print(key)
     
        if userIsTyping == true {
            resultLabel.text = resultLabel.text! + key
        } else {
            resultLabel.text = key
            userIsTyping = true
        }
        
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        calculator.sign = sender.currentTitle
        
        calculator.firstnumber = Double(resultLabel.text!)!
        
        userIsTyping = false
        
    }
    
    @IBAction func equalsTapped(_ sender: UIButton) {

        calculator.secondnumber = Double(resultLabel.text!)!
        calculator.calculate()
        
        resultLabel.text = String(calculator.result)
        userIsTyping = false
        
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        calculator.resetCalculator()
        resultLabel.text = "0.0"
        userIsTyping = false
    }
}

