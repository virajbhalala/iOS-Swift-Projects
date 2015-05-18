//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Viraj Bhalala on 5/17/15.
//  Copyright (c) 2015 Viraj Bhalala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var output: UILabel!
    @IBOutlet var input: UITextField!
    @IBAction func buttonPressed(sender: AnyObject) {
        var randomFingers = arc4random_uniform(6)
        var inputInt = input.text.toInt()
        if inputInt != nil {
            if( inputInt > 5 || inputInt < 0){
                output.text = "Please input number between 1 to 5"
            }else if (Int(randomFingers) == inputInt){
                output.text = "You got it right!"
            }
            else{
                output.text = "Sorry try again :("
            }
       }
        else{
          output.text = "input something"
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

