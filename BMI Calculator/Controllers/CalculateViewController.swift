//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculator = Calculator()
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.0fKg", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculator.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiText = calculator.getBmiText()
            destinationVC.adviceText = calculator.getAdvice()
            destinationVC.backgroundColor = calculator.getColor()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

