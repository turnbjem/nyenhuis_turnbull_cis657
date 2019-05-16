//
//  ViewController.swift
//  HW3 REAL
//
//  Created by Reuben B. Nyenhuis on 5/16/19.
//  Copyright © 2019 Reuben B. Nyenhuis. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dismiss keyboard when tapping outside oftext fields
        let detectTouch = UITapGestureRecognizer(target: self, action:
            #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(detectTouch)
        
        // make this controller the delegate of the text fields.
        }

    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var p1lat: DecimalMinusTextField!
    @IBOutlet weak var p1long: DecimalMinusTextField!
    @IBOutlet weak var p2lat: DecimalMinusTextField!
    @IBOutlet weak var p2long: DecimalMinusTextField!
    @IBOutlet weak var distancelabel: UILabel!
    @IBOutlet weak var bearinglabel: UILabel!
    
  
    @IBAction func calculate_pressed(_ sender: Any) {
        self.distancelabel.text = "Distance: CALCULATED"
    }
    
    @IBAction func clear_pressed(_ sender: Any) {
        self.bearinglabel.text = "Distance: CALCULATED"
    }
}

