//
//  ApiResultViewController.swift
//  AlamofireDemo
//
//  Created by Mahesh on 01/05/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ApiResultViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var users:[User] = []
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        let myUser = users[indexPath.row]
        cell.nameLabel.text = myUser.name
        cell.userName.text = myUser.username
        cell.emailLabel.text = myUser.email
        cell.phone.text = myUser.phone
        cell.companyName.text = "Company"
        cell.companyPhrase.text = "Company"
        cell.address.text = "Company"
        return cell
    }


}
