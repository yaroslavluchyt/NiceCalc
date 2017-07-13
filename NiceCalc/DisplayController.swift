//
//  DisplayController.swift
//  NiceCalc
//
//  Created by Yaroslav Luchyt on 7/3/17.
//  Copyright © 2017 Yaroslav Luchyt. All rights reserved.
//

import UIKit

class DisplayController: UIViewController {

    @IBOutlet  var display: UILabel!
    
    let output = OutputAdapter.shared
    
    func present(_ value: String) {
        display.text = value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.resultDisplay = { [weak self] display in
            self?.present(display)
        }
    }
}
