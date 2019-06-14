//
//  BackgroundCell.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/10/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class SolidCell: UITableViewCell {

    @IBOutlet var solidImageView: UIImageView!
    @IBOutlet var solidLabel: UILabel!
    
    func setBG(solid: Solid)
    {
        solidImageView.image = solid.image
        solidImageView.layer.cornerRadius = solidImageView.frame.size.height/3
        solidLabel.text = solid.name
    }
}
