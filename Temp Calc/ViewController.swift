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
    // message for certain temperatures
    @IBOutlet weak var messageAboutLabel: UILabel!    
    // Segmented controller on the bottom
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        messageAboutLabel.text = ""
    }
    
    // Action for the textview
    @IBAction func calculate(_ sender: Any) {
        // dismiss keyboard prgrammatically
        self.resignFirstResponder()
        
        // reads selected index and performs calc on selection
        // gets triggered from clicking 'done' btn from keyboard
        // when putting in textfield entry
        
        // calc Fahrenheit to Celsius
        if segmentedControl.selectedSegmentIndex == 0 {
            // text converted to double
            let fahrenheit = Double(fillinTextField.text!)
            // Calculation for Celsius
            let celsius = (fahrenheit! - 32) / 1.8
            // put in label, converting Double back into a String,
            // 4 digits before . and 2 digits after
            calcOutputLabel.text = String(format: "%4.2f° Celsius", celsius)
            
            // images to display
            if celsius > 99.9 {
                graphicImageView.image = UIImage(named: "Temp9")
                messageAboutLabel.text = "100° Celsius: Boiling Point of Water"
            } else  if celsius > 69.9 {
                graphicImageView.image = UIImage(named: "Temp8")
                messageAboutLabel.text = ""
            } else  if celsius > 49.9 {
                graphicImageView.image = UIImage(named: "Temp7")
                messageAboutLabel.text = ""
            } else  if celsius > 36.9 {
                graphicImageView.image = UIImage(named: "Temp6")
                messageAboutLabel.text = "37° Celsius: Average Body Temperature"
            } else  if celsius >= 20.9 {
                graphicImageView.image = UIImage(named: "Temp5")
                messageAboutLabel.text = "21.6° Celsius: Room Temperature"
            } else  if celsius >= 0 {
                graphicImageView.image = UIImage(named: "Temp4")
                messageAboutLabel.text = "0° Celsius: Freezing Point of Water"
            } else  if celsius >= -18 {
                graphicImageView.image = UIImage(named: "Temp3")
                messageAboutLabel.text = ""
            } else  if celsius >= -29.1 {
                graphicImageView.image = UIImage(named: "Temp2")
                messageAboutLabel.text = ""
            } else  if celsius <= -29 {
                graphicImageView.image = UIImage(named: "Temp1")
                messageAboutLabel.text = ""
            }
        }
        
        // calc Celsius to Fahrenheit
        if segmentedControl.selectedSegmentIndex == 1 {
            // text converted to double
            let celsius = Double(fillinTextField.text!)
            // Calculation for Fahrenheit
            let fahrenheit = celsius! * 1.8 + 32
            // put in label, converting Double back into a String,
            // 4 digits before . and 2 digits after
            calcOutputLabel.text = String(format: "%4.2f° Fahrenheit", fahrenheit)
            
            // images to display
            if fahrenheit >= 211 {
                graphicImageView.image = UIImage(named: "Temp9")
                messageAboutLabel.text = "212° Fahrenheit: Boiling Point of Water"
            } else  if fahrenheit >= 157 {
                graphicImageView.image = UIImage(named: "Temp8")
                messageAboutLabel.text = ""
            } else  if fahrenheit >= 121 {
                graphicImageView.image = UIImage(named: "Temp7")
                messageAboutLabel.text = ""
            } else  if fahrenheit >= 98 {
                graphicImageView.image = UIImage(named: "Temp6")
                messageAboutLabel.text = "98.6° Fahrenheit: Average Body Temperature"
            } else  if fahrenheit >= 69 {
                graphicImageView.image = UIImage(named: "Temp5")
                messageAboutLabel.text = "69.8° Fahrenheit: Room Temperature"
            } else  if fahrenheit >= 31 {
                graphicImageView.image = UIImage(named: "Temp4")
                messageAboutLabel.text = "32° Fahrenheit: Freezing Point of Water"
            } else  if fahrenheit >= 0 {
                graphicImageView.image = UIImage(named: "Temp3")
                messageAboutLabel.text = ""
            } else  if fahrenheit >= -20.1 {
                graphicImageView.image = UIImage(named: "Temp2")
                messageAboutLabel.text = ""
            } else  if fahrenheit <= -20 {
                graphicImageView.image = UIImage(named: "Temp1")
                messageAboutLabel.text = ""
            }
        }
        
    }
    
    // Action for the segmented control to chamge between two calculations
    @IBAction func formatCalculation(_ sender: Any) {
        // if segment is 0 (left side) = Calculate to Celsius
        if segmentedControl.selectedSegmentIndex == 0 {
            // tells user what to enter in text field
            enterLabel.text = "Enter Fahrenheit"
            // moves value for other conversion
            fillinTextField.text = ""
            // Bottom output label under Thermometer graphic
            calcOutputLabel.text = "0 Celsius"
        }
        // if segment is 1 (right side) = Calculate to Fahrenheit
        if segmentedControl.selectedSegmentIndex == 1 {
            // tells user what to enter in text field
            enterLabel.text = "Enter Celsius"
            // moves value for other conversion
            fillinTextField.text = ""
            // Bottom output label under Thermometer graphic
            calcOutputLabel.text = "0 Fahrenheit"
        }
    }
}

