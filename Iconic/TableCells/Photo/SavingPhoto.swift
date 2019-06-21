//
//  SavingPhoto.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/20/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import UIKit

class SavingPhoto
{
    var photos: [Photo] = []
    let defaults = UserDefaults.standard
    var pathsArray = NSMutableArray()
    
    init(){}
    
    func loadImages()
    {
        print("hhhh")
        let array = defaults.stringArray(forKey: "ImgPaths")
        print(array?.count)
        print(photos.count)
        if array != nil
        {
            for P in array!
            {
                print(P)
                let filepath = getDocumentsDirectory().appendingPathComponent(P)
                print(filepath.path)
                let img = UIImage(contentsOfFile: filepath.path)
                print(img)
                let endFileName = filepath.lastPathComponent as NSString
                let name = endFileName.deletingPathExtension as String
                print(name)
                
                let P = Photo(image: img!, name: name)
                photos.append(P)
            }
        }
    }
    
    func saveImage(img: UIImage, name: String)
    {
        let data = img.jpegData(compressionQuality: 1)
        let filename = name + ".jpeg"
        let filepath = getDocumentsDirectory().appendingPathComponent(filename)
        try? data?.write(to: filepath)
        pathsArray.add(filename)
        defaults.set(pathsArray, forKey: "ImgPaths")
        
        let P = Photo(image: img, name: name)
        photos.append(P)
    }
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
