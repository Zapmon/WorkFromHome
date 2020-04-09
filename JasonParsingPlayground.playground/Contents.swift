//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func getData()
{
    let session = URLSession.shared
    let serviceUrl = URL(string: "https://jsonplaceholder.typicode.com/todos/1")
    let task  = session.dataTask(with: serviceUrl!) { (serviceData, serviceResponse, error) in
        
        if error == nil
        {
            let httpResponse = serviceResponse as! HTTPURLResponse
            
            if httpResponse.statusCode == 200
            {
                let jsonObject = try? JSONSerialization.jsonObject(with: serviceData!, options: .mutableContainers)
                print(jsonObject)
            }
        }
    }
    task.resume()
}

getData()

