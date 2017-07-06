//
//  Brain.swift
//  NiceCalc
//
//  Created by Yaroslav Luchyt on 7/3/17.
//  Copyright © 2017 Yaroslav Luchyt. All rights reserved.
//

import Foundation

class Brain/*: Model*/ {
    static let shared = Brain()
    let output = OutputAdapter.shared
    var equation = ""
    
    var operand: String = ""
    
    func input(number: Int) {
        equation += "\(number)"
    }
    
    func EnterEquation(equation: String) {
        self.equation = equation
        process()
    }
    
    func input(operation: Operation) {
        
    }
    
    func process() {
        //....
        output.output(value: operand)
    }
}
