//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Blair Jordan on 3/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        @IBAction func sumClicked(_ sender: Any) {
            var a = Int(firstText.text!) ?? 0
            var b = Int(secondText.text!) ?? 0
            
            resultLabel.text = String(a + b)
        }
        
        @IBAction func minusClicked(_ sender: Any) {
            var a = Int(firstText.text!) ?? 0
            var b = Int(secondText.text!) ?? 0
            
            resultLabel.text = String(a - b)
        }
        
        @IBAction func multiplyClicked(_ sender: Any) {
            var a = Int(firstText.text!) ?? 0
            var b = Int(secondText.text!) ?? 0
            
            resultLabel.text = String(a * b)
        }
        @IBAction func divideClicked(_ sender: Any) {
            var a = Int(firstText.text!) ?? 0
            var b = Int(secondText.text!) ?? 0
            
            resultLabel.text = String(a / b)
        }
        
}

    
    

