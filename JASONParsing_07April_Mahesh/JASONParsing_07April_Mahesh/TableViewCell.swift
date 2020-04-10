//
//  TableViewCell.swift
//  JASONParsing_07April_Mahesh
//
//  Created by Mahesh on 10/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblcapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
