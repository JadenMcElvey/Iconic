//
//  PhotoViewController.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/14/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController
{
    
    @IBOutlet var preview: UIImageView!
    @IBOutlet var collection: UICollectionView!
    
    var tiles: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = photoName
        self.preview.image = photoImage!
        
        tiles = createTileArray()
        
        collection.delegate = self
        collection.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func createTileArray() -> [UIImage]
    {
        var tempArray: [UIImage] = []
        var cropZones: [CGRect] = getCGRects()
        
        let cgImage = photoImage!.cgImage
        let crop1 = cgImage!.cropping(to: cropZones[0])
        let crop2 = cgImage!.cropping(to: cropZones[1])
        let crop3 = cgImage!.cropping(to: cropZones[2])
        let crop4 = cgImage!.cropping(to: cropZones[3])
        let crop5 = cgImage!.cropping(to: cropZones[4])
        let crop6 = cgImage!.cropping(to: cropZones[5])
        let crop7 = cgImage!.cropping(to: cropZones[6])
        let crop8 = cgImage!.cropping(to: cropZones[7])
        let crop9 = cgImage!.cropping(to: cropZones[8])
        let crop10 = cgImage!.cropping(to: cropZones[9])
        let crop11 = cgImage!.cropping(to: cropZones[10])
        let crop12 = cgImage!.cropping(to: cropZones[11])
        let crop13 = cgImage!.cropping(to: cropZones[12])
        let crop14 = cgImage!.cropping(to: cropZones[13])
        let crop15 = cgImage!.cropping(to: cropZones[14])
        let crop16 = cgImage!.cropping(to: cropZones[15])
        let crop17 = cgImage!.cropping(to: cropZones[16])
        let crop18 = cgImage!.cropping(to: cropZones[17])
        let crop19 = cgImage!.cropping(to: cropZones[18])
        let crop20 = cgImage!.cropping(to: cropZones[19])
        let crop21 = cgImage!.cropping(to: cropZones[20])
        let crop22 = cgImage!.cropping(to: cropZones[21])
        let crop23 = cgImage!.cropping(to: cropZones[22])
        let crop24 = cgImage!.cropping(to: cropZones[23])
        
        tempArray.append(UIImage(cgImage: crop1!))
        tempArray.append(UIImage(cgImage: crop2!))
        tempArray.append(UIImage(cgImage: crop3!))
        tempArray.append(UIImage(cgImage: crop4!))
        tempArray.append(UIImage(cgImage: crop5!))
        tempArray.append(UIImage(cgImage: crop6!))
        tempArray.append(UIImage(cgImage: crop7!))
        tempArray.append(UIImage(cgImage: crop8!))
        tempArray.append(UIImage(cgImage: crop9!))
        tempArray.append(UIImage(cgImage: crop10!))
        tempArray.append(UIImage(cgImage: crop11!))
        tempArray.append(UIImage(cgImage: crop12!))
        tempArray.append(UIImage(cgImage: crop13!))
        tempArray.append(UIImage(cgImage: crop14!))
        tempArray.append(UIImage(cgImage: crop15!))
        tempArray.append(UIImage(cgImage: crop16!))
        tempArray.append(UIImage(cgImage: crop17!))
        tempArray.append(UIImage(cgImage: crop18!))
        tempArray.append(UIImage(cgImage: crop19!))
        tempArray.append(UIImage(cgImage: crop20!))
        tempArray.append(UIImage(cgImage: crop21!))
        tempArray.append(UIImage(cgImage: crop22!))
        tempArray.append(UIImage(cgImage: crop23!))
        tempArray.append(UIImage(cgImage: crop24!))
        
        return tempArray
    }
    
    func getCGRects() -> [CGRect]
    {
        var rectArray: [CGRect] = []
        var screenScaler: Float = 1
        
        if(UIScreen.main.scale == 3.0)
        {
            screenScaler = 1.44
        }
        
        let col1 = CGFloat(54 * screenScaler)
        let col2 = CGFloat(228 * screenScaler)
        let col3 = CGFloat(402 * screenScaler)
        let col4 = CGFloat(576 * screenScaler)
        let width = CGFloat(120 * screenScaler)
        
        let row1 = CGFloat(54 * screenScaler)
        let row2 = CGFloat(228 * screenScaler)
        let row3 = CGFloat(402 * screenScaler)
        let row4 = CGFloat(576 * screenScaler)
        let row5 = CGFloat(750 * screenScaler)
        let row6 = CGFloat(924 * screenScaler)
        let height = CGFloat(120 * screenScaler)
        
        //row
        let r1c1 = CGRect(x: col1, y: row1, width: width, height: height)
        let r1c2 = CGRect(x: col2, y: row1, width: width, height: height)
        let r1c3 = CGRect(x: col3, y: row1, width: width, height: height)
        let r1c4 = CGRect(x: col4, y: row1, width: width, height: height)
        //row2
        let r2c1 = CGRect(x: col1, y: row2, width: width, height: height)
        let r2c2 = CGRect(x: col2, y: row2, width: width, height: height)
        let r2c3 = CGRect(x: col3, y: row2, width: width, height: height)
        let r2c4 = CGRect(x: col4, y: row2, width: width, height: height)
        //row3
        let r3c1 = CGRect(x: col1, y: row3, width: width, height: height)
        let r3c2 = CGRect(x: col2, y: row3, width: width, height: height)
        let r3c3 = CGRect(x: col3, y: row3, width: width, height: height)
        let r3c4 = CGRect(x: col4, y: row3, width: width, height: height)
        //row4
        let r4c1 = CGRect(x: col1, y: row4, width: width, height: height)
        let r4c2 = CGRect(x: col2, y: row4, width: width, height: height)
        let r4c3 = CGRect(x: col3, y: row4, width: width, height: height)
        let r4c4 = CGRect(x: col4, y: row4, width: width, height: height)
        //row5
        let r5c1 = CGRect(x: col1, y: row5, width: width, height: height)
        let r5c2 = CGRect(x: col2, y: row5, width: width, height: height)
        let r5c3 = CGRect(x: col3, y: row5, width: width, height: height)
        let r5c4 = CGRect(x: col4, y: row5, width: width, height: height)
        //row6
        let r6c1 = CGRect(x: col1, y: row6, width: width, height: height)
        let r6c2 = CGRect(x: col2, y: row6, width: width, height: height)
        let r6c3 = CGRect(x: col3, y: row6, width: width, height: height)
        let r6c4 = CGRect(x: col4, y: row6, width: width, height: height)
        
        rectArray.append(r1c1)
        rectArray.append(r1c2)
        rectArray.append(r1c3)
        rectArray.append(r1c4)
        rectArray.append(r2c1)
        rectArray.append(r2c2)
        rectArray.append(r2c3)
        rectArray.append(r2c4)
        rectArray.append(r3c1)
        rectArray.append(r3c2)
        rectArray.append(r3c3)
        rectArray.append(r3c4)
        rectArray.append(r4c1)
        rectArray.append(r4c2)
        rectArray.append(r4c3)
        rectArray.append(r4c4)
        rectArray.append(r5c1)
        rectArray.append(r5c2)
        rectArray.append(r5c3)
        rectArray.append(r5c4)
        rectArray.append(r6c1)
        rectArray.append(r6c2)
        rectArray.append(r6c3)
        rectArray.append(r6c4)
        
        return rectArray
    }
}

extension PhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoTile", for: indexPath) as! PhotoTile
        
        cell.image.image = tiles[indexPath.item]
        cell.image.layer.cornerRadius = cell.frame.size.height/3
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
}
