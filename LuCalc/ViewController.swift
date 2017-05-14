//
//  ViewController.swift
//  LuCalc
//
//  Created by Alex Luckjanov on 5/8/17.
//  Copyright © 2017 Alex Luckjanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: properties
    @IBOutlet weak var FirstNumberField: UITextField!
    @IBOutlet weak var SecondNumberField: UITextField!
    @IBOutlet weak var OperationSwitcher: UISegmentedControl!
    @IBOutlet weak var CalculateButton: UIButton!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var ResultTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func CalculateButtonTouch(_ sender: Any) {
        
        let firstNum: Double
        let SecondNum: Double
        if let FirstNumberFieldText = FirstNumberField.text {
            if let firstNumberOptional = Double(FirstNumberFieldText){
                firstNum = firstNumberOptional
            }
            else {
                return
            }
        }
        else {
            return
        }
        
        if let SecondNumberFieldText = SecondNumberField.text {
            if let secondNumberOptional = Double(SecondNumberFieldText){
                SecondNum = secondNumberOptional
            }
            else {
                return
            }
        }
        else {
            return
        }
        
        let operation = OperationSwitcher.selectedSegmentIndex
        var result: Double
        
        switch operation {
        case 0:
            result = firstNum + SecondNum
        case 1:
            result = firstNum - SecondNum
        case 2:
            result = firstNum * SecondNum
        default:
            result = firstNum / SecondNum
        }
        ResultTextField.text = String(result)
    }
    


}

