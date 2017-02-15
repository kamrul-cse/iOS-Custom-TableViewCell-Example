//
//  UIViewTableViewCell.swift
//  iOS Custom TableViewCell Example
//
//  Created by Md. Kamrul Hasan on 2/15/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
