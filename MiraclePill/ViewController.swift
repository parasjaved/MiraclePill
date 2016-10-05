//
//  ViewController.swift
//  MiraclePill
//
//  Created by Development on 10/4/16.
//  Copyright © 2016 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryTitle: UILabel!
    
    @IBOutlet weak var countryInput: UITextField!
    
    @IBOutlet weak var zipCodeTitle: UILabel!
    
    @IBOutlet weak var zipCodeInput: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIImageView!
    
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florid", "Georgia", "Hawaii", "Idaho",  "Illinois Indiana",
        "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts",
        "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana Nebraska", "Nevada",
        "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina",
        "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania Rhode Island",
        "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
        "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        countryTitle.isHidden = true
        countryInput.isHidden = true
        zipCodeTitle.isHidden = true
        zipCodeInput.isHidden = true
        
        
    }
 
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
//        statePicker.isHidden = true
//        countryTitle.isHidden = false
//        countryInput.isHidden = false
//        zipCodeTitle.isHidden = false
//        zipCodeInput.isHidden = false
        
        statePicker.isHidden = true
    
        countryTitle.isHidden = false
        countryInput.isHidden = false
        zipCodeTitle.isHidden = false
        zipCodeInput.isHidden = false
            
    }
    

}

