//
//  SecondViewController.swift
//  ClosureDemo
//
//  Created by Mahesh on 27/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        viewController.completion = {
            dict in
            self.lblName.text = (dict["name"] as! String)
            self.lblPassword.text = (dict["password"] as! String)
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
