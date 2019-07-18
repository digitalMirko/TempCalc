//
//  ViewController.swift
//  Temp Calc
//
//  Created by Mirko Cukich on 7/17/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Text field user fills in number
    @IBOutlet weak var fillinTextField: UITextField!
    // Label above textField where user enters number
    // used to 'Enter Fahrenheit' or 'Enter Celsius' notice to user
    @IBOutlet weak var enterLabel: UILabel!
    // Thermometer graphic
    @IBOutlet weak var graphicImageView: UIImageView!
    // Calculation Output Label, changes depending on type selection
    @IBOutlet weak var calcOutputLabel: UILabel!
    // Segmented controller on the bottom
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Action for the textview
    @IBAction func calculate(_ sender: Any) {
        
        
    }
    
    // Action for the segmented control to chamge between two calculations
    @IBAction func formatCalculation(_ sender: Any) {
        
        
    }
    

}

