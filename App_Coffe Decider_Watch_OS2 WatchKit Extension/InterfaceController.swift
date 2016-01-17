//
//  InterfaceController.swift
//  App_Coffe Decider_Watch_OS2 WatchKit Extension
//
//  Created by User on 17/1/16.
//  Copyright © 2016 iCologic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //MARK: - VARIABLES LOCALES GLOBALES
    
    var myCoffeeArray = ["Coffee", "Ice Coffee", "Americano", "Espresso", "Ice Americano", "Latte", "Cappuccino", "Espresso Machiato", "Ice Latte", "Coffee Milkshake"]
    
    var myButtonArray = ["Choose Coffee", "Another", "Try again"]
    
    var myCoffeeArrayMAX : Int = 0
    var myButtonArrayMAX : Int = 0
    
    var myCoffeeArrayRandom : Int = 0
    var myButtonArrayRandom : Int = 0
    
    

    
    //MARK: - IBOUTLET
    
    
    @IBOutlet var myLblCoffee: WKInterfaceLabel!
    @IBOutlet var myBtnChooseCoffee: WKInterfaceButton!
    
    
    
    //MARK: - IBACTION
    

    @IBAction func btnChooseCoffeeACTION() {
        
        randomizeTheNumbers()
        
        
    }
    
    
    //MARK: - UTILS
    
    func findMaxItemsInArray(){
        
        myCoffeeArrayMAX = myCoffeeArray.count
        myButtonArrayMAX = myButtonArray.count
        
    }
    
    
    
    func randomizeTheNumbers(){
        
        myCoffeeArrayRandom = Int(arc4random_uniform(UInt32(myCoffeeArrayMAX)))
        myButtonArrayRandom = Int(arc4random_uniform(UInt32(myButtonArrayMAX)))
        
        printCoffee()
        printButton()
        
    }
    
    func printCoffee(){
        
        myLblCoffee.setText("\(myCoffeeArray[myCoffeeArrayRandom])")
        
    }
    
    func printButton(){
        
        myBtnChooseCoffee.setTitle("\(myButtonArray[myButtonArrayRandom])")
        
        
    }
    
    
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        findMaxItemsInArray()
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
