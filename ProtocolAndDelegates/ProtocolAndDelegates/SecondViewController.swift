//
//  SecondViewController.swift
//  ProtocolAndDelegates
//
//  Created by Mahesh on 13/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

protocol datapass {
    func datapassing(name:String,address:String,city:String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nametextfield: UITextField!
    @IBOutlet weak var citytextfield: UITextField!
    @IBOutlet weak var addresstextfield: UITextField!
    var delegate:datapass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(_ sender: UIButton) {
        
        delegate.datapassing(name: nametextfield.text!, address: addresstextfield.text!, city: citytextfield.text!)
        
    }
    

}
