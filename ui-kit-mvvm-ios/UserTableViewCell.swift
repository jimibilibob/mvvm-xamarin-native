//
//  UserTableViewCell.swift
//  ui-kit-mvvm-ios
//
//  Created by user on 20/4/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
