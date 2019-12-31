//
//  ClassTableViewCell.swift
//  TutorialTableView
//
//  Created by Taof on 5/13/19.
//  Copyright © 2019 Tào Quỳnh. All rights reserved.
//

import UIKit

class ClassTableViewCell: UITableViewCell {

    @IBOutlet weak var serialLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
