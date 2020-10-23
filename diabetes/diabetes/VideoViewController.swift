//
//  VideoViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/23/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var text = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
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
