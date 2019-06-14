//
//  Photo.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import UIKit

class Photo
{
    var image = UIImage()
    var name: String = ""
    
    init(image: UIImage, name:String)
    {
        self.image = image
        self.name = name
    }
}
