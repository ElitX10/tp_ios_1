//
//  ResultController.swift
//  LeScolanPourboir
//
//  Created by Thomas LS on 17/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    @IBOutlet weak var tryCount: UILabel!
    var nbrTry = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tryCount.text = "\(nbrTry) coup(s)"
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
