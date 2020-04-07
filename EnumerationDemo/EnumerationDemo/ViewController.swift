//
//  ViewController.swift
//  EnumerationDemo
//
//  Created by Mahesh on 06/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
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
    
    enum collegeFunc {
        case StudentName
        case CollegeName
        case id
        
        func description() -> String
        {
            switch self {
            case .CollegeName:
                return "KCL-IMT,Jalandhar"
            case .StudentName:
                return "Mahesh Giri"
            case .id:
                return "123"
            }
        }
    }
    
    enum detail
    {
        case name(String)
        case marks(String,String,String)
    }
    
    func data()
    {
        let studName = detail.name("Mahesh")
        let studMarks = detail.marks("12", "15", "16")
        
        switch studMarks {
            
        case .name(let strName):
            label.text = strName
            
        case .marks(let m1, let m2, let m3):
            label.text = "\(m1), \(m2), \(m3)"
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      // EnumDemo()
      //typeEnum()
       // let college = collegeFunc.StudentName.description()
        //label.text = college
        data()
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

