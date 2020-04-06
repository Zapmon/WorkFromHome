//
//  ViewController.swift
//  NSNotificationDemo_April062020
//
//  Created by Mahesh on 06/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector:#selector(facebook(notification:)),name: .Facebook, object: nil)
        
        NotificationCenter.default.addObserver(self, selector:#selector(twitter(notification:)), name: .Twitter, object: nil)
    }
    
    @objc func facebook(notification:Notification)
    {
        label.text = "Facebook"
        imageview.image = #imageLiteral(resourceName: "facebook")
    }
    
    @objc func twitter(notification:Notification)
    {
        label.text = "Twitter"
        imageview.image = #imageLiteral(resourceName: "twitter")
    }

    
    @IBAction func chooseSocialButton(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
    }
    

}
extension Notification.Name
{
    static let Facebook = Notification.Name("Facebook")
    static let Twitter = Notification.Name("Twitter")
}

