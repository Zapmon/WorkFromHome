//
//  ViewController.swift
//  CollectionView
//
//  Created by Mahesh on 24/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource  {
    
    //MARK:- Player detail dictionary array
    
    var playerArray = [["name":"MS Dhoni","age":"48","matches":"245","highest_score":"183","image_name":"https://ichef.bbci.co.uk/news/1024/cpsprodpb/8E8C/production/_110529463_gettyimages-1154898763.jpg"],["name":"Virat Kohli","age":"30","matches":"145","highest_score":"103","image_name":"https://img.manoramaonline.com/content/dam/mm/en/sports/cricket/images/2020/1/17/virat-kohli-new.jpg"],["name":"Suresh Raina","age":"40","matches":"205","highest_score":"181","image_name":"https://m.cricbuzz.com/a/img/v1/192x192/i1/c148324/suresh-raina.jpg"],["name":"Hardik Pandya","age":"48","matches":"245","highest_score":"183","image_name":"https://iplwiki.com/wp-content/uploads/1989/06/Hardik-Pandya-min.jpg"],["name":"Rohit Sharma","age":"48","matches":"245","highest_score":"183","image_name":"https://timesofindia.indiatimes.com/photo/69257289.cms"],["name":"Shikhar Dhawan","age":"48","matches":"245","highest_score":"183","image_name":"https://m.cricbuzz.com/a/img/v1/192x192/i1/c170660/shikhar-dhawan.jpg"],["name":"Jasprit Bumrah","age":"48","matches":"245","highest_score":"183","image_name":"https://m.cricbuzz.com/a/img/v1/192x192/i1/c170685/jasprit-bumrah.jpg"],["name":"Yuzvendra Chahal","age":"48","matches":"245","highest_score":"183","image_name":"https://m.cricbuzz.com/a/img/v1/192x192/i1/c170690/yuzvendra-chahal.jpg"],["name":"Ravindra Jadeja","age":"48","matches":"245","highest_score":"183","image_name":"https://m.cricbuzz.com/a/img/v1/192x192/i1/c170670/ravindra-jadeja.jpg"],["name":"Sachin Tendulkar","age":"48","matches":"245","highest_score":"183","image_name":"https://m.economictimes.com/thumb/msid-72033478,width-1200,height-900,resizemode-4,imgsize-222096/sachin-tendulkar.jpg"],["name":"Kuldeep Yadav","age":"48","matches":"245","highest_score":"183","image_name":"https://bsmedia.business-standard.com/_media/bs/img/topic-profile/profile-images/full/1553260314.jpg"]]
    
    //Mark:-Selected Player Array
    var selected_Player:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK:- Cricket Team Selection Function
    @IBAction func SelectedCricketTeam(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
    //MARK:- CollectionView delegates and data source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playerArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = (playerArray[indexPath.row]["name"] )
        cell.matchLabel.text = (playerArray[indexPath.row]["matches"] )
        cell.highestScoreLabel.text = (playerArray[indexPath.row]["highest_score"] )
     //   cell.playerImageView.image = UIImage(named: playerArray[indexPath.row]["image_name"] as! String)
        
        let url = NSURL(string: self.playerArray[indexPath.row]["image_name"]!)
        cell.playerImageView.af_setImage(withURL: url! as URL, placeholderImage: nil, filter: nil, imageTransition: .crossDissolve(0.5), runImageTransitionIfCached: true, completion: nil)
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
           // playerArray[indexPath.row]["selected"] = false
            selected_Player.remove(at: selected_Player.index(of: indexPath.row)!)
        }
        else
        {
           // playerArray[indexPath.row]["selected"] = true
            self.selected_Player.append(indexPath.row)
        }
        collectionView.reloadData()
        print(selected_Player)
    }


}

