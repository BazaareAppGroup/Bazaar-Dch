//
//  CategoryTableViewCell.swift
//  Baazar
//
//  Created by David King on 4/25/18.
//  Copyright © 2018 David King. All rights reserved.
//TO-DO *Optional* Add image to describe category
//TO-DO *Optional* Input text to describe category

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var CategoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
