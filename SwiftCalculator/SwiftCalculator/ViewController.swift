//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Lars van der Sangen on 16/01/2019.
//  Copyright © 2019 Lars van der Sangen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    private var pressedNumber: Double = 0.0;
    private var pressedAction: String = "";

    @IBOutlet weak var numberOnScreen: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.numberOnScreen.text = "0";
    }
    
    @IBAction func clickNumber(_ sender: UIButton)
    {
        // Get clicked value. Could say number if the comma button didn't exist
        let clickedValue: String = (sender.titleLabel?.text)!;
        
        // Get current number currently presented on screen
        let currentNumberOnScreen: String = (self.numberOnScreen?.text)!;
        
        // Construct new number combining strings numberOnScreen and clickedValue
        let newNumber: String = currentNumberOnScreen + clickedValue;
        
        // Set the newNumber as text value to the numberOnScreen label
        self.numberOnScreen.text = newNumber;
    }
    
    
    @IBAction func clickAction(_ sender: UIButton)
    {
        var dinges: Double = Double(sender.titleLabel?.text)!;
        
        self.pressedNumber = Double(self.numberOnScreen.text) ?? 0
    }
}
