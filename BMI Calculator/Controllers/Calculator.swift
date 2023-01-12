//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Francesco Balestrieri on 30.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = BMI(bmiValue: weight/pow(height,2))
    }
    
    func getBmiText() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Undefined"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
