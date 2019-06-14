//
//  HeaderCell.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/10/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {

    @IBOutlet var heading: UILabel!
    @IBOutlet var subHeading: UILabel!
    
    func setText(header: Header)
    {
        heading.text = header.heading
        subHeading.text = header.subHeading
    }

}
