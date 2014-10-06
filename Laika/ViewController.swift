//
//  ViewController.swift
//  Laika
//
//  Created by Amit S. Patel on Oct/5.
//  Copyright (c) 2014 nomad labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInDogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertDogYearButton(sender: UIButton) {
        let dogYears = 7
        var ageInDogYears = humanYearsTextField.text.toInt()! * dogYears
        
        ageInDogYearsLabel.text = toString(ageInDogYears) + " in dog years"
        humanYearsTextField.text = ""
        
        ageInDogYearsLabel.hidden = false
        
        humanYearsTextField.resignFirstResponder()
    }


}

