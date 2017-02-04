//
//  GroupTableViewCell.swift
//  Among
//
//  Created by 김혜원 on 2017. 2. 3..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var completionPercentView: UIView!
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var entryCountLabel: UILabel!
    @IBOutlet weak var completionPercentImageView: UIImageView!
    @IBOutlet weak var completionPercentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
