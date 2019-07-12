//
//  InfoScreenViewController.swift
//  Iconic
//
//  Created by Jaden McElvey on 7/4/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit
import StoreKit

protocol IAPurchaceViewControllerDelegate
{
    func didBuyEnableCustomWallpaper()
}

class InfoScreenViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver
{
    

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    
    @IBOutlet var enableCustomBackgroundButton: UIButton!
    
    var productIDs: Array<String> = []
    var productsArray: Array<SKProduct> = []
    var transactionInProgress = false
    var delegate: IAPurchaceViewControllerDelegate!
    
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
        
        productIDs.append("0CustomWallpaper")
        
        requestProductInfo()
        print(UserDefaults.standard.bool(forKey: "CustomBGEnabled"))
        if UserDefaults.standard.bool(forKey: "CustomBGEnabled")
        {
            didBuyEnableCustomWallpaper()
        }
        SKPaymentQueue.default().add(self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyEnableCustomWallpapersTapped(_ sender: Any)
    {
        if !UserDefaults.standard.bool(forKey: "CustomBGEnabled")
        {
            showActions()
        }
    }
    @IBAction func restorePurchases(_ sender: Any)
    {
        print("maybe restore")
        SKPaymentQueue.default().restoreCompletedTransactions()
        self.transactionInProgress = true
    }
    
    func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
        transactionInProgress = false
    }
    
    func requestProductInfo() {
        if SKPaymentQueue.canMakePayments() {
            let productIdentifiers = NSSet(array: productIDs)
            let productRequest = SKProductsRequest(productIdentifiers: productIdentifiers as Set<NSObject> as! Set<String>)
            
            productRequest.delegate = self
            productRequest.start()
        }
        else {
            print("Cannot perform In App Purchases.")
        }
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse)
    {
        print("aaaaaaaaaaaaa")
        if response.products.count != 0 {
            for product in response.products
            {
                productsArray.append(product)
                print("added")
            }
        }
        if response.invalidProductIdentifiers.count != 0
        {
            print(response.invalidProductIdentifiers.description)
        }
    }
    
    func showActions() {
        if transactionInProgress {
            return
        }
        
        let actionSheetController = UIAlertController(title: "Enable Custom Wallpapers", message: "Confirm purchase for $0.99", preferredStyle: UIAlertController.Style.actionSheet)
        
        let buyAction = UIAlertAction(title: "Buy", style: UIAlertAction.Style.default) { (action) -> Void in
            let payment = SKPayment(product: self.productsArray[0] as SKProduct)
            SKPaymentQueue.default().add(payment)
            self.transactionInProgress = true
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (action) -> Void in}
        
        actionSheetController.addAction(buyAction)
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true, completion: nil)
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case SKPaymentTransactionState.purchased:
                print("Transaction completed successfully.")
                SKPaymentQueue.default().finishTransaction(transaction)
                transactionInProgress = false
                didBuyEnableCustomWallpaper()
                
            case SKPaymentTransactionState.restored:
                print("Restored")
                SKPaymentQueue.default().finishTransaction(transaction)
                didBuyEnableCustomWallpaper()
                transactionInProgress = false
                
            case SKPaymentTransactionState.failed:
                print("Transaction Failed");
                SKPaymentQueue.default().finishTransaction(transaction)
                transactionInProgress = false
                
            default:
                print(transaction.transactionState.rawValue)
            }
        }
    }
    
    func didBuyEnableCustomWallpaper()
    {
        enableCustomBackgroundButton.setTitle("Thank You", for: UIControl.State.normal)
        UserDefaults.standard.set(true, forKey: "CustomBGEnabled")
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
