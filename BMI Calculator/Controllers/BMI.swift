//
//  BMI.swift
//  BMI Calculator
//
//  Created by Francesco Balestrieri on 12.1.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(bmiValue: Float) {
        value = bmiValue
        if value < 18.5 {
            advice = "Eat more snacks"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else if value > 24.9 {
            advice = "Eat less snacks"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        } else {
            advice = "Good job!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
