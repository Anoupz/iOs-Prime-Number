//
//  ViewController.swift
//  Prime Number
//
//  Created by Anoop Narayanan on 11/4/15.
//  Copyright © 2015 APNApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputField: UITextField!
    @IBOutlet var result: UILabel!
    @IBAction func checkIfPrime(sender: AnyObject) {
        
        var isPrime = true
        let number = Int(inputField.text!)
        
        if(number != nil){

            if( number == 1){
                isPrime = false
            }
            
            if (number != 1 && number != 2) {
                
                for (var i = 2 ; i < number; i++) {
                    if (number! % i == 0) {
                        isPrime = false
                    }
                }
            }
            
            if(isPrime){
                result.text = "Is a Prime Number"
            } else {
                result.text = "Not a Prime Number"
            }
            
        } else {
            result.text = "Not a Valid Number"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

