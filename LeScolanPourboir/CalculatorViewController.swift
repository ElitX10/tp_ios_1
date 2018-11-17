//
//  CalculatorViewController.swift
//  LeScolanPourboir
//
//  Created by Thomas LS on 15/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var pourboirLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let tauxPourboir = 0.12
    var currencySigne = "€"
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    @IBAction func controleValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            currencySigne = "€"
        }else{
            currencySigne = "$"
        }
        updateDisplay()
    }
    
    func updateDisplay(){
        let montantAddition = slider.value
        
        let montantPourboir = Double(montantAddition) * tauxPourboir
        
        pourboirLabel.text = String(Int(montantPourboir)) + " " + currencySigne
        additionLabel.text = String(Int(montantAddition)) + " " + currencySigne
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDisplay()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
