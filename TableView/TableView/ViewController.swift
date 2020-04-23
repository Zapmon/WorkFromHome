//
//  ViewController.swift
//  TableView
//
//  Created by Mahesh on 23/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var player = ["Virat Kohli","Rohit Sharma","Shikhar Dhawan","Sachin Tendulker","MS Dhoni","Suresh Raina","Kuldeep Yadav","Ravindra Jadeja","Jaspreet Bumrah","Yujvendra Chahal","Hardik Pandya"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.playerImageView.image = UIImage(named: self.player[indexPath.row])
        cell.nameLabel.text = player[indexPath.row]
        return cell
    }
}

