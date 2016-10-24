//
//  MyTableViewCell.swift
//  CIS22C_LAB2
//
//  Created by Brian Lim on 10/24/16.
//  Copyright © 2016 Brian Lim. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

   
    @IBOutlet var cellAnimalImage: UIImageView!
    @IBOutlet var cellAnimalName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
