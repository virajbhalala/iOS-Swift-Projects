//
//  ViewController.swift
//  isItPrime
//
//  Created by Viraj Bhalala on 1/8/15.
//  Copyright (c) 2015 Viraj Bhalala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    @IBOutlet var str: UITextField!
    @IBAction func click(sender: AnyObject) {
        var num = str.text.toInt()

        if num != nil {
            var wrap=num!
            var isPrime=true
            

            if(wrap == 1){
                    isPrime=false
            }
            if(wrap != 2 && wrap != 1){
                for (var i = 0; i < wrap; i++ ) {
                    if (wrap % i == 0 ) {
                        isPrime = false
                    }
                    
                }
            }
            
            
        }
        else{
            result.text = "number is odd"

            
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

