//
//  DetailedViewController.swift
//  JASONParsing_07April_Mahesh
//
//  Created by Mahesh on 10/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    @IBOutlet weak var alpha2: UILabel!
    @IBOutlet weak var alpha3: UILabel!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var subregion: UILabel!
    
    var stralpha2 = ""
    var stralpha3 = ""
    var strregion = ""
    var strsubregion = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alpha2.text = stralpha2
        alpha3.text = stralpha3
        region.text = strregion
        subregion.text = strsubregion

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
