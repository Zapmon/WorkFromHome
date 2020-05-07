//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by Mahesh on 29/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    var jsonResponse : JSON? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
      /*
        //MARK:- Generating GET Request
        let url = NSURL(string: "https://jsonplaceholder.typicode.com/users")
        let request = NSMutableURLRequest(url : url! as URL)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        //Hitting Alamofire GET Request
        Alamofire.request(request).responseJSON(){ response in
            switch response.result
            {
                case .success(let data) :
                    print("Fetched Successfully \(data)")
                case .failure(let error):
                    print("Request Failed due to \(error)")
            }
        }*/
    }
    
    //MARK:- GET Request
    @IBAction func getButton(_ sender: UIButton) {
        print("get button")
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts", method: .get, parameters: ["userId": "10"],encoding:URLEncoding.default,headers:["content-type":"application/json"]).validate(statusCode: 200..<300).responseJSON(){
            response in
            let alertController = UIAlertController(title: "Message", message: "Data Fetched Successfully", preferredStyle: .alert)
            switch response.result
            {
            case .success(let data):
                
                let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "ApiResultViewController") as! ApiResultViewController
                
                let okAlertAction = UIAlertAction(title: "OK", style: .destructive){
                    (action) in
                    
                    self.jsonResponse = JSON(data)
                    for i in 0...10
                    {
                        let singleUser = User(userJSON:self.jsonResponse![i])
                        secondVC.users.append(singleUser)
                        
                    }
                    self.navigationController?.pushViewController(secondVC, animated: true)
                    print("Data fetched Successfully \(data)")
                    
                }
                alertController.addAction(okAlertAction)
                
                
            case .failure(let error):
                let cancelAlertAction = UIAlertAction(title: "Cancel", style: .destructive){
                    (action) in
                    
                    print("Data Request Failed due to \(error)")
                }
                alertController.addAction(cancelAlertAction)
                
            }
        }
    }
    
    //MARK:- POST Request
    
    @IBAction func postButton(_ sender: UIButton) {
        print("post button")
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts", method: .post, parameters: ["userId": "10","id" : "101","title":"hitesh","body":"Hello! this is testing"],encoding:URLEncoding.default,headers:[:]).validate(statusCode: 200..<300).responseJSON(){
            response in
            
            switch response.result
            {
            case .success(let data):
                print("Data posted Successfully \(data)")
            case .failure(let error):
                print("Data Request Failed due to \(error)")
            }
        }
    }
    
    //MARK:- Image Upload
    @IBAction func imageUploadButton(_ sender: UIButton) {
        print("Image Upload button")
    }
}

