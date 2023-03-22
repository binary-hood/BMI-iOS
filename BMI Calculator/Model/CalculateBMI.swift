//
//  CalculateBMI.swift
//  BMI Calculator
//
//  Created by Faseeh Ahmed Khan Lodhi on 3/22/23.
//

import UIKit

struct CalculateBMI {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiVal = weight / pow(height, 2)
        
        if bmiVal < 18.4 {
            bmi = BMI(value: bmiVal, adviceText: "Eat more Fish & Chips", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiVal <= 24.9 {
            bmi = BMI(value: bmiVal, adviceText: "You are Healthy & Fit", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else if bmiVal <= 29.9 {
            bmi = BMI(value: bmiVal, adviceText: "Eat less Fish & Chips", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        }else {
            bmi = BMI(value: bmiVal, adviceText: "Hit the Gym", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
    }
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    func getAdvice() -> String {
        return bmi?.adviceText ?? "No Advice"
    }
    
}
