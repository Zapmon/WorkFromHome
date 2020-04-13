//
//  ViewController.swift
//  ProtocolAndDelegates
//
//  Created by Mahesh on 13/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, datapass {
    
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var lbladdress: UILabel!
    @IBOutlet weak var lblcity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func formButton(_ sender: UIButton) {
        
        let secondvc = self.storyboard?.instantiateViewController(withIdentifier:"SecondViewController" ) as! SecondViewController
        secondvc.delegate = self
        self.navigationController?.pushViewController(secondvc, animated: true)
    }
    func datapassing(name: String, address: String, city: String) {
        namelbl.text = name
        lbladdress.text = address
        lblcity.text = city
    }
}

