//
//  MessageCellTableViewCell.swift
//  Using TableView
//
//  Created by Abdulrahman Al-amoudi on 09/08/2020.
//  Copyright © 2020 Abdulrahman Al-amoudi. All rights reserved.
//

import UIKit

class MessageCellTableViewCell: UITableViewCell {
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
