//
//  planingViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/21/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class planingViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var doctorTextField:  UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var planingTextField: UITextField!
    
    
    let types = ["النوع الثاني","النوع الاول"]
    let doctors = ["تهاني التميمي","محمد العتيبي","عبدالله جار الله","يوسف النجار","سميه العيسى","امتثال القلاف","شهد الصراف","فهد العلي","سلطان الشيباني","ناصر الشويب","خالد المطيري","سندس الحماده","يعقوب الدلامه"]

    
    
    
    
  

    
    
    

    
    //var pickerView = UIPickerView()
    let typePicker = UIPickerView()
    let doctorsPicker = UIPickerView()
    let planingPicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        doctorTextField.inputView = doctorsPicker
        typeTextField.inputView = typePicker
        
        doctorTextField.placeholder = "select doctor"
        typeTextField.placeholder = "select type"
        
        doctorTextField.textAlignment = .center
        typeTextField.textAlignment = .center
        
        doctorsPicker.delegate = self
        doctorsPicker.dataSource = self
        typePicker.delegate = self
        typePicker.dataSource = self
        
        
        doctorsPicker.tag = 1
        typePicker.tag = 2
        
//        pickerView.delegate = self
//        pickerView.dataSource = self
//        typeTextField.inputView = pickerView
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
extension planingViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
            // You need case 0 here
        case 1:
            return doctors.count
        case 2:
            return types.count
        default:
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
            // you need case 0 here
        case 1:
            return doctors[row]
        case 2:
            return types[row]
        default:
            fatalError("Couldn't find picker view with tag: \( pickerView.tag)")
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         switch pickerView.tag {
               case 1:
            doctorTextField.text = doctors[row]
            doctorTextField.resignFirstResponder()
               case 2:
            typeTextField.text = types[row]
            typeTextField.resignFirstResponder()
               default:
                   return
           }
    }
        
        
    
}

