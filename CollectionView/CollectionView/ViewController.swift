//
//  ViewController.swift
//  CollectionView
//
//  Created by Mahesh on 24/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource  {
    let playerArray = [["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"MS-Dhoni"],["name":"Virat Kohli","age":"30","matches":"145","highest_score":"103","image_name":"Virat-Kohli"],["name":"Suresh Raina","age":"40","matches":"205","highest_score":"181","image_name":"suresh-raina"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"Hardik-Pandya"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"rohit"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"shikhar-dhawan"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"bumrah"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"chahal"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"jadeja"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"Sachin-Tendulkar"],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"kuldeep-yadav"]]
    
    
    var selected_Player:[[String:String]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playerArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = playerArray[indexPath.row]["name"]
        cell.matchLabel.text = playerArray[indexPath.row]["matches"]
        cell.highestScoreLabel.text = playerArray[indexPath.row]["highest_score"]
        cell.playerImageView.image = UIImage(named: playerArray[indexPath.row]["image_name"]!)
        return cell
    }


}

