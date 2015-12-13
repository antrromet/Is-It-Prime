//
//  ViewController.swift
//  Is It Prime
//
//  Created by Antrromet on 12/13/15.
//  Copyright © 2015 Antrromet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    
    @IBAction func checkPrimeClicked(sender: AnyObject) {
        
        let num = Int(numberTextField.text!)
        
        if num == nil {
            resultsLabel.text = "Please enter a valid number!"
        } else {
            var isPrime = true
            for var i=2;i<=num!/2;i++ {
                if num!%i == 0 {
                    isPrime = false
                    break
                }
            }
            if isPrime {
                resultsLabel.text = "\(num!) is Prime!"
            } else {
                resultsLabel.text = "\(num!) is not Prime!"
            }
        }
        
    }
    
    @IBOutlet var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

