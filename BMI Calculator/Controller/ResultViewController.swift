//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Faseeh Ahmed Khan Lodhi on 3/22/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: String?
    var colorText: UIColor?
    var adviceText: String?
    
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiValue.text = bmiVal
        adviceLabel.text = adviceText
        bmiValue.textColor = colorText
    }
    

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
