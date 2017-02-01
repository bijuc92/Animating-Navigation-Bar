//
//  TableViewCell.swift
//  Animating Navigation Bar
//
//  Created by Nfonics on 01/02/17.
//  Copyright © 2017 Nfonics Solutions. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var rowLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
