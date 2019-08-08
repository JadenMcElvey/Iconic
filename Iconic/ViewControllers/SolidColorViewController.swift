//
//  SolidColorViewController.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/14/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class SolidColorViewController: UIViewController
{

    @IBOutlet var preview: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = solidColorName
        self.preview!.image = solidColorImage!
        self.preview!.layer.cornerRadius = self.preview!.frame.size.height/3
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddToHomeScreen(_ sender: Any)
    {
        hWrite.ServerReady(img: preview.image!)
        let urlString = hWrite.wserver.webServer.serverURL
        UIApplication.shared.open(urlString!, options: [:], completionHandler: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
