//
//  login.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/22/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class login: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
//        if  email.text != "" || password.text != "" {
//           performSegue(withIdentifier: "done", sender: nil)
//        }else{
//             print("noooo")
//        }
        if  email.text == "" || password.text == "" {
            print("noooo")
        }else{
           performSegue(withIdentifier: "done", sender: nil) 
          }
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


