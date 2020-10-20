//
//  VCViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/19/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class VCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func B1(_ sender: Any) {
        performSegue(withIdentifier: "Identifier1", sender: nil)
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
