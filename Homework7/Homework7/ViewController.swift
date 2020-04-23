//
//  ViewController.swift
//  Homework7
//
//  Created by Kato on 4/23/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var newSegmentControler: UISegmentedControl!
    
    @IBOutlet weak var newSlider: UISlider!
    
    
    @IBOutlet weak var finalOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcButton(_ sender: UIButton) {
    
        let firstValue = Int(firstTextField.text!)
        let secondValue = Int(secondTextField.text!)
        
        var outputValue = 0
        
        if firstValue != nil && secondValue != nil {
            
             switch newSegmentControler.selectedSegmentIndex {
                case 0:
                outputValue = Int(firstValue! + secondValue!)
                case 1:
                outputValue = Int(firstValue! - secondValue!)
                case 2:
                outputValue = Int(firstValue! / secondValue!)
                case 3:
                outputValue = Int(firstValue! * secondValue!)
                default:
                print("")
            
            }
          finalOutput.text = "Your output is: \(outputValue)"
        }
        else {
            finalOutput.text = "ERROR, INCORRECT INPUT"
        }

//finalOutput.text = "The Output Font Size Is: \(finalOutput.font.pointSize)"
    }
    
    @IBAction func changeSize(_ sender: UISlider) {
        //let newValue = Int(sender.value)
        //sender.value = Float(newValue)
        self.finalOutput.font = UIFont.systemFont(ofSize: CGFloat(newSlider.value))
    }
    
}

