//
//  GameController.swift
//  LeScolanPourboir
//
//  Created by Thomas LS on 16/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    @IBOutlet weak var borne_inf: UILabel!
    @IBOutlet weak var borne_supp: UILabel!
    @IBOutlet weak var info_texte: UILabel!
    @IBOutlet weak var input_texte: UITextField!
    
    var levelDiff = Int()
    
    var min = 0
    var max = 1000
    var secret = Int.random(in: 0...1000)
    var nbr_try = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        info_texte.isHidden = true
        initBorneSupp()
        
        
        // Do any additional setup after loading the view.
    }
    
    func updateBorne(val: Int) {
        info_texte.isHidden = true
        if val < min || val > max {
            info_texte.isHidden = false
        } else {
            print("val : \(secret < val)")
            if secret > val {
                min = val
                borne_inf.text = String(min)
                nbr_try += 1
            } else if secret < val {
                max = val
                borne_supp.text = String(max)
                nbr_try += 1
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ResultController{
            let vc = segue.destination as? ResultController
            vc?.nbrTry = self.nbr_try
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let val:Int = Int(input_texte.text ?? "-1") ?? -1
        
        print("secret : \(secret)")
        
        if val != secret {
            updateBorne(val: val)
            self.input_texte.text = ""
            return false
        } else {
            nbr_try += 1
        }
        return true
    }
    
    func initBorneSupp() {
        switch levelDiff {
        case 0:
            max = 100
        case 1:
            max = 1000
        case 2:
            max = 10000
        default:
            max = 1000
        }
        secret = Int.random(in: 0...max)
        borne_supp.text = String(max)
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
