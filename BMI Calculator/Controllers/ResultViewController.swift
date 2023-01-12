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
    @IBOutlet weak var background: UIImageView!
    
    var bmiText: String = ""
    var adviceText: String = ""
    var backgroundColor: UIColor = UIColor.white
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiText
        messageLabel.text = adviceText
        background.backgroundColor  = backgroundColor
    }
}
