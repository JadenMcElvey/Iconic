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
        photos.removeAll()
        
        let array = defaults.stringArray(forKey: "ImgPaths")
        if array != nil
        {
            for P in array!
            {
                let filepath = getDocumentsDirectory().appendingPathComponent(P)
                let img = UIImage(contentsOfFile: filepath.path)
                let endFileName = filepath.lastPathComponent as NSString
                var name = endFileName.deletingPathExtension as String
                name.removeLast(10)
                print(name)
                
                let P = Photo(image: img!, name: name)
                photos.append(P)
            }
        }
    }
    
    func saveImage(img: UIImage, name: String)
    {
        let t = Int(Date().timeIntervalSince1970.rounded())
        let fileEndString = String(t) + ".jpeg"
        
        let data = img.jpegData(compressionQuality: 1)
        let filename = name + fileEndString
        print(filename)
        let filepath = getDocumentsDirectory().appendingPathComponent(filename)
        try? data?.write(to: filepath)
        pathsArray.add(filename)
        defaults.set(pathsArray, forKey: "ImgPaths")
        
        let P = Photo(image: img, name: name)
        photos.append(P)
    }
    
    func deleteImage(index: Int)
    {
        var pathsArray = defaults.stringArray(forKey: "ImgPaths")
        
        let path = getDocumentsDirectory().appendingPathComponent(pathsArray![index])
        try? FileManager.default.removeItem(atPath: path.absoluteString)
        
        pathsArray?.remove(at: index)
        defaults.set(pathsArray, forKey: "ImgPaths")
        
        loadImages()
    }
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
