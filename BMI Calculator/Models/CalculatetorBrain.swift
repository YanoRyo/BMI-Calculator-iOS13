//
//  CalculatetorBrain.swift
//  BMI Calculator
//
//  Created by RyoYano on 2022/06/04.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain{
    
    var bmi: BMI?
    func getBMIValue()->String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    mutating func calculateBMI(height: Float,weight: Float){
        
        let bmiValue = weight / (height * height)
            
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }else if bmiValue > 18.5 && bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    
}
