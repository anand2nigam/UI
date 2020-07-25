//
//  VideoCollectionViewCell.swift
//  UI
//
//  Created by Anand Nigam on 25/07/20.
//  Copyright © 2020 Anand Nigam. All rights reserved.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.cornerRadius = 6
        imageView.layer.masksToBounds = true
        playImage.layer.cornerRadius = playImage.frame.height/2
        playImage.layer.masksToBounds = true
        timerLabel.layer.cornerRadius = timerLabel.frame.height/2
        timerLabel.layer.masksToBounds = true
    }

}
