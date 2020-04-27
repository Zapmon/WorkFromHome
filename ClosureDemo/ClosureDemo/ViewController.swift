//
//  ViewController.swift
//  ClosureDemo
//
//  Created by Mahesh on 27/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    typealias completionHandler = ([String:Any]) -> Void
    var completion : completionHandler?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func SaveButton(_ sender: UIButton) {
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        let dict = ["name" : name, "password": password]
        completion!(dict)
        self.navigationController?.popViewController(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }


}

