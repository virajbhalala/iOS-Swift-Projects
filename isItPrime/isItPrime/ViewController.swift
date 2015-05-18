//
//  ViewController.swift
//  IsItPrime
//
//  Created by Viraj Bhalala on 1/8/15.
//  Copyright (c) 2015 Viraj Bhalala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //is it odd?
    
    @IBOutlet var Answer: UILabel!
    @IBOutlet var userNum: UITextField!

    @IBAction func checkButton(sender: AnyObject) {
        var userInt = userNum.text.toInt()
        if( userInt != nil ){
            if (userInt!%2 == 0){
                Answer.text = "Number is even number"
            }
            else{
                Answer.text = "Number is odd number "
            }
        }
        else{
            Answer.text="Please enter number"
        }
    }
    
    //is it prime?
    @IBOutlet var PrimeOutput: UILabel!
    @IBOutlet var PrimeInput: UITextField!
    @IBAction func PrimeButton(sender: AnyObject) {
        var PrimeInt = PrimeInput.text.toInt()
        var bool = true
        for (var i = 2; i < PrimeInt; i++){

            if PrimeInt! % i == 0 {
                bool = false
            }

        }
        if bool == true {
            PrimeOutput.text = "Number is a prime number!"
        }
        else{
            PrimeOutput.text = "Number is not a prime number"
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

