//
//  BudgetViewController.swift
//  Project_ezmony
//
//  Created by Florian Börsch on 08.08.18.
//  Copyright © 2018 Bad Pixel. All rights reserved.
//

import UIKit
import Charts

class BudgetViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonsDesign()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    fileprivate func configureButtonsDesign() {
        plusButton.backgroundColor = UIColorFromHex(rgbValue: 0x5DCE6B, alpha: 0.6)
        plusButton.layer.cornerRadius = 25
        minusButton.backgroundColor = UIColorFromHex(rgbValue: 0xE0837F, alpha: 0.6)
        minusButton.layer.cornerRadius = 25
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
}

