//
//  GameMenuController.swift
//  LeScolanPourboir
//
//  Created by Thomas LS on 17/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class GameMenuController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {        
        if segue.destination is GameController{
            let vc = segue.destination as? GameController
            vc?.levelDiff = self.segment.selectedSegmentIndex
        }
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
