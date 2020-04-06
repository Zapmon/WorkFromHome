//
//  SecondViewController.swift
//  NSNotificationDemo_April062020
//
//  Created by Mahesh on 06/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func facebookbutton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .Facebook, object: nil)
        
    }
    @IBAction func twitterButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .Twitter, object: nil)
    }
    
}
