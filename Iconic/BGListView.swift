//
//  BGListView.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class BGListView: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var popup: UIView!
    @IBOutlet var customBGName: UITextField!
    @IBOutlet var popupBG: UIView!
    
    var solids: [Solid] = []
    var headings: [Header] = []
    var photos: [Photo] = []
    var savedPhotos = SavingPhoto()
    var protectedIndices = 0
    
    var tempImage = UIImage(named: "Stock19")

    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIDevice.current.name.lowercased())
        
        savedPhotos.loadImages()
        
        popupBG.isHidden = true
        popup.layer.cornerRadius = popup.frame.size.height/6
        
        customBGName.delegate = self
        
        solids = createSolidArray()
        headings = createHeaderArray()
        photos = createPhotoArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func addImage(_ sender: Any)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        
        picker.sourceType = UIImagePickerController.SourceType.photoLibrary
        picker.allowsEditing = false
        
        self.present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            tempImage = image
            popupBG.isHidden = false
        }
        else
        {
            print("error")
        }
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func addImageName(_ sender: Any)
    {
        savedPhotos.saveImage(img: tempImage!, name: customBGName.text!)
        customBGName.text = ""
        photos = createPhotoArray()
        tableView.reloadData()
        popupBG.isHidden = true
    }
    
    func createHeaderArray() -> [Header]
    {
        var tempArray: [Header] = []
        
        let H1 = Header(heading: "Iconic", subHeading: "Instructions and Purchases")
        
        tempArray.append(H1)
        
        return tempArray
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
    
    func createPhotoArray() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        tempArray = getPhotos()
        
        protectedIndices = headings.count + solids.count + tempArray.count - 1
        for P in savedPhotos.photos
        {
            tempArray.append(P)
        }
        
        return tempArray
    }
    
    func getPhotos() -> [Photo]
    {
        var photoArray: [Photo] = []
        
        var device = UIDevice.current.name
        device = device.lowercased()
        
        if(device.firstIndex(of: "x") == nil)
        {
            if(device.contains("plus"))
            {
                print("plus")
                photoArray = plusSeries()
            }
            else if(device.contains("se"))
            {
                print("se")
                photoArray = se()
            }
            else
            {
                print("norm")
                photoArray = standardSeries()
            }
        }
        else
        {
            if(device.contains("ʀ"))
            {
                print("r")
                photoArray = xr()
            }
            else if(device.contains("max"))
            {
                print("max")
                photoArray = xsmax()
            }
            else
            {
                print("x/xs")
                photoArray = xandxsSeries()
            }
        }
        return photoArray
    }
    
    func standardSeries() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_1")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_1")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_1")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_1")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_1")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_1")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_1")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_1")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_1")!, name: "Swan No.17")

        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
        return tempArray
    }
    
    func plusSeries() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_2")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_2")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_2")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_2")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_2")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_2")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_2")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_2")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_2")!, name: "Swan No.17")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
        return tempArray
    }
    
    func xandxsSeries() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_3")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_3")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_3")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_3")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_3")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_3")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_3")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_3")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_3")!, name: "Swan No.17")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
        return tempArray
    }
    
    func xr() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_4")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_4")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_4")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_4")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_4")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_4")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_4")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_4")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_4")!, name: "Swan No.17")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
        return tempArray
    }
    
    func xsmax() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_5")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_5")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_5")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_5")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_5")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_5")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_5")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_5")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_5")!, name: "Swan No.17")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
        return tempArray
    }
    
    func se() -> [Photo]
    {
        var tempArray: [Photo] = []
        
        let P1 = Photo(image: UIImage(named: "Series7No5_6")!, name: "Series 7 No.5")
        let P2 = Photo(image: UIImage(named: "SevenStarNo1_6")!, name: "Seven Star No.1")
        let P3 = Photo(image: UIImage(named: "TheLargeFigure_6")!, name: "The Large Figure")
        let P4 = Photo(image: UIImage(named: "SwanNo1_6")!, name: "Swan No.1")
        let P5 = Photo(image: UIImage(named: "SwanNo7_6")!, name: "Swan No.7")
        let P6 = Photo(image: UIImage(named: "SwanNo9_6")!, name: "Swan No.9")
        let P7 = Photo(image: UIImage(named: "SwanNo10_6")!, name: "Swan No.10")
        let P8 = Photo(image: UIImage(named: "SwanNo12_6")!, name: "Swan No.12")
        let P9 = Photo(image: UIImage(named: "SwanNo17_6")!, name: "Swan No.17")
        
        tempArray.append(P1)
        tempArray.append(P2)
        tempArray.append(P3)
        tempArray.append(P4)
        tempArray.append(P5)
        tempArray.append(P6)
        tempArray.append(P7)
        tempArray.append(P8)
        tempArray.append(P9)
        
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
            solidColorImage = cell.solidImageView!.image
            solidColorName = cell.solidLabel.text!
        }
        else if(selectedCell is PhotoCell)
        {
            let cell = selectedCell as! PhotoCell
            photoImage = cell.photoImageView!.image
            photoName = cell.photoLabel.text!
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        if(indexPath.row <= protectedIndices)
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if(editingStyle == .delete)
        {
            let customPhotosIndex = indexPath.row - protectedIndices - 1
            savedPhotos.deleteImage(index: customPhotosIndex)
            photos = createPhotoArray()
            tableView.reloadData()
        }
    }
}
