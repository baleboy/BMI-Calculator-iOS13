//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Francesco Balestrieri on 29.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var bmiText: String = ""
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiText
    }
}
