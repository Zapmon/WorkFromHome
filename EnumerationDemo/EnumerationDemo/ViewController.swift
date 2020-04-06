//
//  ViewController.swift
//  EnumerationDemo
//
//  Created by Mahesh on 06/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Without type enumeration
    enum Detail
    {
        case StudentName
        case CollegeName
        case id
    }
    
    //With type enumeration
    enum College:String {
        case CollegeName = "KCL-IMT"
        case StudentName = "Mahesh Giri"
        case id = "124554"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      // EnumDemo()
        typeEnum()
    }


    
    func typeEnum()
    {
        switch College.StudentName {
        case .CollegeName:
            print(College.CollegeName.rawValue)
            print(College.CollegeName.hashValue)
        case .StudentName:
            print(College.StudentName.rawValue)
            print(College.StudentName.hashValue)
        case .id:
            print(College.id.rawValue)
            print(College.id.hashValue)
        }
    }
    
    func EnumDemo()
    {
        let StudentName = Detail.StudentName
        
        switch StudentName {
        case .CollegeName:
            print("KCL IMT")
        case .StudentName:
            print("Mahesh Giri")
        case .id:
            print("152")
        }
    }


}

