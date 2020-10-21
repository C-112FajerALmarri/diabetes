//
//  planingViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/21/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class planingViewController: UIViewController {
    @IBOutlet weak var planingTextField: UITextField!
    
    @IBOutlet weak var doctorsTextField: UITextField!
    
    @IBOutlet weak var typeTextField: UITextField!
    let typePicker = UIPickerView()
    let doctorsPicker = UIPickerView()
    let planingPicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
showDatePicker()
        // Do any additional setup after loading the view.
    }
    
    func showDatePicker() {
        planingPicker.datePickerMode = .date
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "انتهيت", style: .done, target: self, action: #selector(doneDate))
  let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "الرجوع", style:.plain, target: self, action: #selector(cancelDate))
        toolBar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        planingTextField.inputAccessoryView=toolBar
        planingTextField.inputView=planingPicker
    }
    @objc func doneDate () {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        planingTextField.text = formatter.string(from: planingPicker.date)
        self.view.endEditing(true)
    }
    @objc func cancelDate () {
         self.view.endEditing(true)
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
