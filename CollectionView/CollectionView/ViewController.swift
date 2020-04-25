//
//  ViewController.swift
//  CollectionView
//
//  Created by Mahesh on 24/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource  {
    var playerArray = [["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"MS-Dhoni","selected":false],["name":"Virat Kohli","age":"30","matches":"145","highest_score":"103","image_name":"Virat-Kohli","selected":false],["name":"Suresh Raina","age":"40","matches":"205","highest_score":"181","image_name":"suresh-raina","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"Hardik-Pandya","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"rohit","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"shikhar-dhawan","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"bumrah","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"chahal","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"jadeja","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"Sachin-Tendulkar","selected":false],["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"kuldeep-yadav","selected":false]]
    
    
    var selected_Player:[Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectedCricketTeam(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        for i in 0...playerArray.count
        {
            if (self.playerArray[i]["Selected"] as! Bool)
            {
                //secondVC.selectedPlayer.append(self.playerArray[i])
            }
        }
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playerArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = (playerArray[indexPath.row]["name"] as! String)
        cell.matchLabel.text = (playerArray[indexPath.row]["matches"] as! String)
        cell.highestScoreLabel.text = (playerArray[indexPath.row]["highest_score"] as! String)
        cell.playerImageView.image = UIImage(named: playerArray[indexPath.row]["image_name"] as! String)
        
        if selected_Player.contains(indexPath.row)
        {
            cell.selectedItemView.isHidden = false
        }
        else
        {
            cell.selectedItemView.isHidden = true
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.row)
        if self.selected_Player.contains(indexPath.row)
        {
            playerArray[indexPath.row]["selected"] = false
            selected_Player.remove(at: selected_Player.index(of: indexPath.row)!)
        }
        else
        {
            playerArray[indexPath.row]["selected"] = true
            self.selected_Player.append(indexPath.row)
        }
        collectionView.reloadData()
        print(selected_Player)
    }


}

