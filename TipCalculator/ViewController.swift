//
//  ViewController.swift
//  TipCalculator
//
//  Created by Matthew Cheung on 11/25/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var numPeople: UITextField!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let people = Double(numPeople.text!) ?? 0
        let tipPercentages = [0.1,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let payPerPerson = total / people
        
        tipLabel.text = String(format: "$%.2f",tip )
        totalLabel.text = String(format: "$%.2f",total)
        perPersonLabel.text = String(format:"%.2f",payPerPerson)
        
    }
}

