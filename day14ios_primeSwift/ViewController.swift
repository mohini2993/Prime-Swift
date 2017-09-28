//
//  ViewController.swift
//  day14ios_primeSwift
//
//  Created by Student 01 on 23/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var numberText: UITextField!
    
    @IBAction func checkPrime(_ sender: Any)
    {
        if let userEnteredString = numberText.text{
            let userEnteredInteger = Int(userEnteredString)
            
           
            if let number = userEnteredInteger{
                
                var isPrime = true
              
                if number == 1{
                    isPrime = false
                }
                var i = 2
               
                while i < number{
                    
                    if number % i == 0
                    {
                        isPrime = false
                    }
                    
                    i += 1
                }
            
                if isPrime
                {
                    myLabel.text = "\(number) is prime!"
                }
                    
                else
                {
                    myLabel.text = "\(number) is not prime"
                }
                
            }
                
            else
            {
                myLabel.text = "Please enter a positive whole number."
            }
        }
    }
    
    
    


       @IBOutlet weak var myLabel: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

