//
//  PhotoCell.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoLabel: UILabel!
    
    func setBG(photo: Photo)
    {
        photoImageView.image = photo.image
        photoLabel.text = photo.name
    }
}
