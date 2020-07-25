//
//  HeaderTableViewCell.swift
//  UI
//
//  Created by Anand Nigam on 25/07/20.
//  Copyright © 2020 Anand Nigam. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    
    @IBOutlet weak var headerText: UILabel!
    @IBOutlet weak var editLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withText text: String, showEdit flag: Bool) {
        self.headerText.text = text
        self.editLabel.isHidden = !flag
    }
    
}
