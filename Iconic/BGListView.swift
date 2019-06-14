//
//  BGListView.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class BGListView: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var solids: [Solid] = []
    var headings: [Header] = []
    var photos: [Photo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        solids = createSolidArray()
        headings = createHeaderArray()
        photos = createPhotoArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func createSolidArray() -> [Solid]
    {
        var tempArray: [Solid] = []
        
        let S1 = Solid(image: UIImage(named: "SysBlackIcon")!, name: "Black")
        let S2 = Solid(image: UIImage(named: "SysGrayIcon")!, name: "Gray")
        let S3 = Solid(image: UIImage(named: "SysWhiteIcon")!, name: "White")
        let S4 = Solid(image: UIImage(named: "SysRedIcon")!, name: "Red")
        let S5 = Solid(image: UIImage(named: "SysOrangeIcon")!, name: "Orange")
        let S6 = Solid(image: UIImage(named: "SysYellowIcon")!, name: "Yellow")
        let S7 = Solid(image: UIImage(named: "SysGreenIcon")!, name: "Green")
        let S8 = Solid(image: UIImage(named: "SysBlueIcon")!, name: "Blue")
        let S9 = Solid(image: UIImage(named: "SysTealIcon")!, name: "Teal")
        let S10 = Solid(image: UIImage(named: "SysPurpleIcon")!, name: "Purple")
        let S11 = Solid(image: UIImage(named: "SysIndigoIcon")!, name: "Indigo")
        let S12 = Solid(image: UIImage(named: "SysPinkIcon")!, name: "Pink")
        let S13 = Solid(image: UIImage(named: "SysFuschiaIcon")!, name: "Fuschia")
        
        tempArray.append(S1)
        tempArray.append(S2)
        tempArray.append(S3)
        tempArray.append(S4)
        tempArray.append(S5)
        tempArray.append(S6)
        tempArray.append(S7)
        tempArray.append(S8)
        tempArray.append(S9)
        tempArray.append(S10)
        tempArray.append(S11)
        tempArray.append(S12)
        tempArray.append(S13)
        
        return tempArray
    }
    
    func createHeaderArray() -> [Header]
    {
        var tempArray: [Header] = []
        
        let H1 = Header(heading: "Iconic", subHeading: "Instructions and Purchases")
        
        tempArray.append(H1)
        
        return tempArray
    }
    
    func createPhotoArray() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Stock1")!, name: "Stock Background 1")
        let P2 = Photo(image: UIImage(named: "Stock2")!, name: "Stock Background 2")
        let P3 = Photo(image: UIImage(named: "Stock3")!, name: "Stock Background 3")
        let P4 = Photo(image: UIImage(named: "Stock4")!, name: "Stock Background 4")
        let P5 = Photo(image: UIImage(named: "Stock5")!, name: "Stock Background 5")
        let P6 = Photo(image: UIImage(named: "Stock6")!, name: "Stock Background 6")
        let P7 = Photo(image: UIImage(named: "Stock7")!, name: "Stock Background 7")
        let P8 = Photo(image: UIImage(named: "Stock8")!, name: "Stock Background 8")
        let P9 = Photo(image: UIImage(named: "Stock9")!, name: "Stock Background 9")
        let P10 = Photo(image: UIImage(named: "Stock10")!, name: "Stock Background 10")
        let P11 = Photo(image: UIImage(named: "Stock11")!, name: "Stock Background 11")
        let P12 = Photo(image: UIImage(named: "Stock12")!, name: "Stock Background 12")
        let P13 = Photo(image: UIImage(named: "Stock13")!, name: "Stock Background 13")
        let P14 = Photo(image: UIImage(named: "Stock14")!, name: "Stock Background 14")
        let P15 = Photo(image: UIImage(named: "Stock15")!, name: "Stock Background 15")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        tempArray.append(P10)
        tempArray.append(P11)
        tempArray.append(P12)
        tempArray.append(P13)
        tempArray.append(P14)
        tempArray.append(P15)
        
        return tempArray
    }
}

extension BGListView: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let rowCount = solids.count + headings.count + photos.count
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var i = indexPath.row
        
        if(indexPath.row == 0)
        {
            let h = headings[i]
            let cell = tableView.dequeueReusableCell(withIdentifier: "HCell") as! HeaderCell
            cell.setText(header: h)
            return cell
        }
        else if(0 < indexPath.row && indexPath.row <= solids.count)
        {
            i-=headings.count
            let s = solids[i]
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCell") as! SolidCell
            cell.setBG(solid: s)
            return cell
        }
        else
        {
            i-=headings.count
            i-=solids.count
            let p = photos[i]
            let cell = tableView.dequeueReusableCell(withIdentifier: "PCell") as! PhotoCell
            cell.setBG(photo: p)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        if(indexPath.row == 0)
        {
            return 70
        }
        else
        {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let selectedCell = self.tableView(self.tableView, cellForRowAt: indexPath)
        if(selectedCell is SolidCell)
        {
            let cell = selectedCell as! SolidCell
            solidColorImage = cell.imageView?.image
            solidColorName = cell.solidLabel.text!
        }
        else if(selectedCell is PhotoCell)
        {
            let cell = selectedCell as! PhotoCell
            photoImage = cell.imageView?.image
            photoName = cell.photoLabel.text!
        }
    }
}
