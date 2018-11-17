//
//  ViewController.swift
//  LeScolanPourboir
//
//  Created by Thomas LS on 15/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        messageLabel.text = "Tip Calculator"
    }


}

