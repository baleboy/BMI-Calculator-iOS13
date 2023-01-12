//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Francesco Balestrieri on 30.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct Calculator {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmi: Float?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight/pow(height,2)
    }
    
    func getBmiText() -> String {
            return String(format: "%.1f", bmi ?? 0.0)
    }
}
