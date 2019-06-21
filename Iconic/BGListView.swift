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
    
    var tempImage = UIImage(named: "Stock19")

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        let P16 = Photo(image: UIImage(named: "Stock16")!, name: "Stock Background 16")
        let P17 = Photo(image: UIImage(named: "Stock17")!, name: "Stock Background 17")
        let P18 = Photo(image: UIImage(named: "Stock18")!, name: "Stock Background 18")
        let P19 = Photo(image: UIImage(named: "Stock19")!, name: "Stock Background 19")
        
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
        tempArray.append(P16)
        tempArray.append(P17)
        tempArray.append(P18)
        tempArray.append(P19)
        
        for P in savedPhotos.photos
        {
            tempArray.append(P)
        }
        
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
}
