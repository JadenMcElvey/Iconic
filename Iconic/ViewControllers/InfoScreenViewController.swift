//
//  InfoScreenViewController.swift
//  Iconic
//
//  Created by Jaden McElvey on 7/4/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class InfoScreenViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.titleLabel?.numberOfLines = 1
        button2.titleLabel?.numberOfLines = 1
        button3.titleLabel?.numberOfLines = 1
        button4.titleLabel?.numberOfLines = 1
        button5.titleLabel?.numberOfLines = 1
        button6.titleLabel?.numberOfLines = 1
        
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button2.titleLabel?.adjustsFontSizeToFitWidth = true
        button3.titleLabel?.adjustsFontSizeToFitWidth = true
        button4.titleLabel?.adjustsFontSizeToFitWidth = true
        button5.titleLabel?.adjustsFontSizeToFitWidth = true
        button6.titleLabel?.adjustsFontSizeToFitWidth = true
        // Do any additional setup after loading the view.
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
