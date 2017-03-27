//
//  PerfilAnfitriaoViewController.swift
//  HosPet
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class PerfilAnfitriaoViewController: UIViewController {

    
    @IBOutlet weak var container01: UIView!

    @IBOutlet weak var container02: UIView!
    
    
    
    @IBAction func opcoesPerfilBar(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            container01.isHidden = false
            container02.isHidden = true
        case 1:
            
            container01.isHidden = true
            container02.isHidden = false
        case 2:
            break
        case 3:
            break
        default:
            break
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        container01.isHidden = false
        container02.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
