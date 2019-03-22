//
//  ViewController.swift
//  ColorPicker
//
//  Created by Alex Davis on 3/18/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let dataSource = ["Red","Orange","Yellow","Green","Blue","Purple"]
    
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var ColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PickerView.dataSource = self
        PickerView.delegate = self
        PickerView.selectRow(0, inComponent: 0, animated: true)
        ColorLabel.text = dataSource[0]
        self.view.backgroundColor = UIColor.red
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorLabel.text = dataSource[row]
        
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow
        }
        else if(row == 3)
        {
            self.view.backgroundColor = UIColor.green
        }
        else if(row == 4)
        {
            self.view.backgroundColor = UIColor.blue
        }
        else
        {
            self.view.backgroundColor = UIColor.purple
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
}
