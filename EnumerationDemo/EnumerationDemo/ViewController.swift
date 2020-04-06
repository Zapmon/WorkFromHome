//
//  ViewController.swift
//  EnumerationDemo
//
//  Created by Mahesh on 06/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Detail
    {
        case StudentName
        case CollegeName
        case id
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       EnumDemo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func EnumDemo()
    {
        let StudentName = Detail.CollegeName
        print(StudentName)
        print(Detail.CollegeName.hashValue)
    }


}

