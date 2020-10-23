//
//  codeViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/23/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit
var codes = ["STY456","LKER560","MDPL205"]
class codeViewController: UIViewController {
    @IBOutlet weak var codeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    codeLabel.text = codes.randomElement()
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
