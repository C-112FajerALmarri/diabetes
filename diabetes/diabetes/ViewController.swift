//
//  ViewController.swift
//  diabetes
//
//  Created by Sarah Almarii on 10/15/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

//var picker: UIPickerView!


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        picker.dataSource = self
 //       picker.delegate = self
    }


}
extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
}
extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return"test"
    }
}
