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
        print(UIDevice.current.name)
        
        collection.delegate = self
        collection.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBAction func saveTapped(_ sender: Any)
    {
        UIImageWriteToSavedPhotosAlbum(photoImage!, self, #selector(image) ,nil)
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer)
    {}
    
    func createTileArray() -> [UIImage]
    {
        var tempArray: [UIImage] = []
        var cropZones: [CGRect] = getCGRects()
        
        let cgImage = photoImage!.cgImage
        
        if(UIDevice.current.name.contains("SE"))
        {
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
        }
        else
        {
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
        }
        
        return tempArray
    }
    
    func getCGRects() -> [CGRect]
    {
        var rectArray: [CGRect] = []
        
        var device = UIDevice.current.name
        device = device.lowercased()
        
        if(device.firstIndex(of: "x") == nil)
        {
            if(device.contains("plus"))
            {
                print("plus")
                rectArray = plusSeries()
            }
            else if(device.contains("se"))
            {
                print("se")
                rectArray = se()
            }
            else
            {
                print("norm")
                rectArray = standardSeries()
            }
        }
        else
        {
            if(device.contains("ʀ"))
            {
                print("r")
                rectArray = xr()
            }
            else if(device.contains("max"))
            {
                print("max")
                rectArray = xsmax()
            }
            else
            {
                print("x/xs")
                rectArray = xandxsSeries()
            }
        }
        
        return rectArray
    }
    
    func standardSeries() -> [CGRect]
    {
        var standardSeriesArray: [CGRect] = []
        
        let col1 = CGFloat(54)
        let col2 = CGFloat(228)
        let col3 = CGFloat(402)
        let col4 = CGFloat(576)
        let width = CGFloat(120)
        
        let row1 = CGFloat(56)
        let row2 = CGFloat(232)
        let row3 = CGFloat(408)
        let row4 = CGFloat(584)
        let row5 = CGFloat(760)
        let row6 = CGFloat(936)
        let height = CGFloat(120)
        
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
        
        standardSeriesArray.append(r1c1)
        standardSeriesArray.append(r1c2)
        standardSeriesArray.append(r1c3)
        standardSeriesArray.append(r1c4)
        standardSeriesArray.append(r2c1)
        standardSeriesArray.append(r2c2)
        standardSeriesArray.append(r2c3)
        standardSeriesArray.append(r2c4)
        standardSeriesArray.append(r3c1)
        standardSeriesArray.append(r3c2)
        standardSeriesArray.append(r3c3)
        standardSeriesArray.append(r3c4)
        standardSeriesArray.append(r4c1)
        standardSeriesArray.append(r4c2)
        standardSeriesArray.append(r4c3)
        standardSeriesArray.append(r4c4)
        standardSeriesArray.append(r5c1)
        standardSeriesArray.append(r5c2)
        standardSeriesArray.append(r5c3)
        standardSeriesArray.append(r5c4)
        standardSeriesArray.append(r6c1)
        standardSeriesArray.append(r6c2)
        standardSeriesArray.append(r6c3)
        standardSeriesArray.append(r6c4)
        
        return standardSeriesArray
    }
    
    func plusSeries() -> [CGRect]
    {
        var plusSeriesArray: [CGRect] = []
        
        let col1 = CGFloat(105)
        let col2 = CGFloat(389)
        let col3 = CGFloat(673)
        let col4 = CGFloat(957)
        let width = CGFloat(180)
        
        let row1 = CGFloat(114)
        let row2 = CGFloat(414)
        let row3 = CGFloat(714)
        let row4 = CGFloat(1014)
        let row5 = CGFloat(1314)
        let row6 = CGFloat(1614)
        let height = CGFloat(180)
        
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
        
        plusSeriesArray.append(r1c1)
        plusSeriesArray.append(r1c2)
        plusSeriesArray.append(r1c3)
        plusSeriesArray.append(r1c4)
        plusSeriesArray.append(r2c1)
        plusSeriesArray.append(r2c2)
        plusSeriesArray.append(r2c3)
        plusSeriesArray.append(r2c4)
        plusSeriesArray.append(r3c1)
        plusSeriesArray.append(r3c2)
        plusSeriesArray.append(r3c3)
        plusSeriesArray.append(r3c4)
        plusSeriesArray.append(r4c1)
        plusSeriesArray.append(r4c2)
        plusSeriesArray.append(r4c3)
        plusSeriesArray.append(r4c4)
        plusSeriesArray.append(r5c1)
        plusSeriesArray.append(r5c2)
        plusSeriesArray.append(r5c3)
        plusSeriesArray.append(r5c4)
        plusSeriesArray.append(r6c1)
        plusSeriesArray.append(r6c2)
        plusSeriesArray.append(r6c3)
        plusSeriesArray.append(r6c4)
        
        return plusSeriesArray
    }
    
    func xandxsSeries() -> [CGRect]
    {
        var xSeriesArray: [CGRect] = []
        
        let col1 = CGFloat(81)
        let col2 = CGFloat(342)
        let col3 = CGFloat(603)
        let col4 = CGFloat(864)
        let width = CGFloat(180)
        
        let row1 = CGFloat(216)
        let row2 = CGFloat(522)
        let row3 = CGFloat(828)
        let row4 = CGFloat(1134)
        let row5 = CGFloat(1440)
        let row6 = CGFloat(1746)
        let height = CGFloat(180)
        
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
        
        xSeriesArray.append(r1c1)
        xSeriesArray.append(r1c2)
        xSeriesArray.append(r1c3)
        xSeriesArray.append(r1c4)
        xSeriesArray.append(r2c1)
        xSeriesArray.append(r2c2)
        xSeriesArray.append(r2c3)
        xSeriesArray.append(r2c4)
        xSeriesArray.append(r3c1)
        xSeriesArray.append(r3c2)
        xSeriesArray.append(r3c3)
        xSeriesArray.append(r3c4)
        xSeriesArray.append(r4c1)
        xSeriesArray.append(r4c2)
        xSeriesArray.append(r4c3)
        xSeriesArray.append(r4c4)
        xSeriesArray.append(r5c1)
        xSeriesArray.append(r5c2)
        xSeriesArray.append(r5c3)
        xSeriesArray.append(r5c4)
        xSeriesArray.append(r6c1)
        xSeriesArray.append(r6c2)
        xSeriesArray.append(r6c3)
        xSeriesArray.append(r6c4)
        
        return xSeriesArray
    }
    
    func xr() -> [CGRect]
    {
        var xSeriesArray: [CGRect] = []
        
        let col1 = CGFloat(64)
        let col2 = CGFloat(254)
        let col3 = CGFloat(446)
        let col4 = CGFloat(636)
        let width = CGFloat(128)
        
        let row1 = CGFloat(156)
        let row2 = CGFloat(380)
        let row3 = CGFloat(605)
        let row4 = CGFloat(830)
        let row5 = CGFloat(1055)
        let row6 = CGFloat(1280)
        let height = CGFloat(128)
        
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
        
        xSeriesArray.append(r1c1)
        xSeriesArray.append(r1c2)
        xSeriesArray.append(r1c3)
        xSeriesArray.append(r1c4)
        xSeriesArray.append(r2c1)
        xSeriesArray.append(r2c2)
        xSeriesArray.append(r2c3)
        xSeriesArray.append(r2c4)
        xSeriesArray.append(r3c1)
        xSeriesArray.append(r3c2)
        xSeriesArray.append(r3c3)
        xSeriesArray.append(r3c4)
        xSeriesArray.append(r4c1)
        xSeriesArray.append(r4c2)
        xSeriesArray.append(r4c3)
        xSeriesArray.append(r4c4)
        xSeriesArray.append(r5c1)
        xSeriesArray.append(r5c2)
        xSeriesArray.append(r5c3)
        xSeriesArray.append(r5c4)
        xSeriesArray.append(r6c1)
        xSeriesArray.append(r6c2)
        xSeriesArray.append(r6c3)
        xSeriesArray.append(r6c4)
        
        return xSeriesArray
    }
    
    func xsmax() -> [CGRect]
    {
        var xSeriesArray: [CGRect] = []
        
        let col1 = CGFloat(96)
        let col2 = CGFloat(382)
        let col3 = CGFloat(668)
        let col4 = CGFloat(954)
        let width = CGFloat(192)
        
        let row1 = CGFloat(234)
        let row2 = CGFloat(571)
        let row3 = CGFloat(908)
        let row4 = CGFloat(1245)
        let row5 = CGFloat(1582)
        let row6 = CGFloat(1919)
        let height = CGFloat(192)
        
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
        
        xSeriesArray.append(r1c1)
        xSeriesArray.append(r1c2)
        xSeriesArray.append(r1c3)
        xSeriesArray.append(r1c4)
        xSeriesArray.append(r2c1)
        xSeriesArray.append(r2c2)
        xSeriesArray.append(r2c3)
        xSeriesArray.append(r2c4)
        xSeriesArray.append(r3c1)
        xSeriesArray.append(r3c2)
        xSeriesArray.append(r3c3)
        xSeriesArray.append(r3c4)
        xSeriesArray.append(r4c1)
        xSeriesArray.append(r4c2)
        xSeriesArray.append(r4c3)
        xSeriesArray.append(r4c4)
        xSeriesArray.append(r5c1)
        xSeriesArray.append(r5c2)
        xSeriesArray.append(r5c3)
        xSeriesArray.append(r5c4)
        xSeriesArray.append(r6c1)
        xSeriesArray.append(r6c2)
        xSeriesArray.append(r6c3)
        xSeriesArray.append(r6c4)
        
        return xSeriesArray
    }
    
    func se() -> [CGRect]
    {
        var seArray: [CGRect] = []
        
        let col1 = CGFloat(32)
        let col2 = CGFloat(184)
        let col3 = CGFloat(336)
        let col4 = CGFloat(488)
        let width = CGFloat(120)
        
        let row1 = CGFloat(54)
        let row2 = CGFloat(230)
        let row3 = CGFloat(406)
        let row4 = CGFloat(582)
        let row5 = CGFloat(758)
        let height = CGFloat(120)
        
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
        
        seArray.append(r1c1)
        seArray.append(r1c2)
        seArray.append(r1c3)
        seArray.append(r1c4)
        seArray.append(r2c1)
        seArray.append(r2c2)
        seArray.append(r2c3)
        seArray.append(r2c4)
        seArray.append(r3c1)
        seArray.append(r3c2)
        seArray.append(r3c3)
        seArray.append(r3c4)
        seArray.append(r4c1)
        seArray.append(r4c2)
        seArray.append(r4c3)
        seArray.append(r4c4)
        seArray.append(r5c1)
        seArray.append(r5c2)
        seArray.append(r5c3)
        seArray.append(r5c4)
        
        return seArray
    }
}

extension PhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tiles.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoTile", for: indexPath) as! PhotoTile
        
        cell.image.image = tiles[indexPath.item]
        cell.image.layer.cornerRadius = cell.frame.size.height/3
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let selectedCell = self.collectionView(self.collection, cellForItemAt: indexPath)
        let cell = selectedCell as! PhotoTile
        hWrite.ServerReady(img: cell.image.image!)
        let urlString = hWrite.wserver.webServer.serverURL
        UIApplication.shared.open(urlString!, options: [:], completionHandler: nil)
        print(indexPath.item)
    }
}
