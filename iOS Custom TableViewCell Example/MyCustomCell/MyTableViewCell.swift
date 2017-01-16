//
//  MyTableViewCell.swift
//  iOS Custom TableViewCell Example
//
//  Created by Md. Kamrul Hasan on 1/16/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myCellImageView: UIImageView!
    @IBOutlet weak var myCellTextView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
