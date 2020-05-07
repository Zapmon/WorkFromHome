//
//  TableViewCell.swift
//  AlamofireDemo
//
//  Created by Mahesh on 06/05/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var companyPhrase: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
