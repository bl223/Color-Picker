//
//  ViewController.swift
//  Color-Picker
//
//  Created by Bryce Ligaya on 4/20/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var colors = [Color(name: "red",    uiColor: UIColor.red),  //using from Color Struct
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow", uiColor: UIColor.yellow),
                  Color(name: "green",  uiColor: UIColor.green),
                  Color(name: "blue",   uiColor: UIColor.blue),
                  Color(name: "purple", uiColor: UIColor.purple)]
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = colors[0].uiColor
        colorLabel.text = colors[0].name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
