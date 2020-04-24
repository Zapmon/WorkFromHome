//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by Mahesh on 24/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var highestScoreLabel: UILabel!
}
