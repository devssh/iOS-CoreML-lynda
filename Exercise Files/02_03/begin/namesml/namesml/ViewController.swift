//
//  ViewController.swift
//  NamesML
//
//  Created by Brian Advent on 31.08.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        
    }
    
    // string="nina"
    /*  "firstLetter1=n"    :1.0    */
    /*  "firstLetter2=i"    :1.0    */
    /*  "firstLetter3=n"    :1.0    */
    /*  "lastLetter1=i"     :1.0    */
    /*  "lastLetter2=n"     :1.0    */
    /*  "lastLetter3=a"     :1.0    */
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

