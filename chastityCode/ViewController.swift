//
//  ViewController.swift
//  chastityCode
//
//  Created by Yisen on 9/29/15.
//  Copyright © 2015 Yisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var uniqueID = String()
    
    var position = [String]()
    
    var timeShow = String()
    
    @IBAction func generateButton(sender: AnyObject) {
        
        randomStringWithLength(11)
        
        self.position.removeAll(keepCapacity: false)
        
        
        for i in 0..<12 {
            
            let tt = uniqueID[uniqueID.startIndex.advancedBy(i)]
            
            if tt == "A" || tt == "B" || tt == "C" || tt == "1" || tt == "2" || tt == "3" || tt == "D" || tt == "E" || tt == "F" {

                position.append("↑")

            } else if tt == "N" || tt == "O" || tt == "P" || tt == "6" || tt == "7" || tt == "8" || tt == "Q" || tt == "R" || tt == "S" || tt == "T" {
                
                position.append("↓")
                
            } else if tt == "U" || tt == "V" || tt == "W" || tt == "9" || tt == "0" || tt == "X" || tt == "Y" || tt == "Z" {
                
                position.append("←")
                
                
            } else if tt == "G" || tt == "H" || tt == "I" || tt == "J" || tt == "4" || tt == "5" || tt == "K" || tt == "L" || tt == "M" {
                
                position.append("→")
                
            }
            
            
        }
        
        
        if self.position.count == 12 {
            
            self.r1.text = self.position[0]
            
            self.r2.text = self.position[1]
            
            self.r3.text = self.position[2]
            
            self.r4.text = self.position[3]
            
            
            self.r5.text = self.position[4]
            
            self.r6.text = self.position[5]
            
            self.r7.text = self.position[6]
            
            self.r8.text = self.position[7]
            
            
            self.r9.text = self.position[8]
            
            self.r10.text = self.position[9]
            
            self.r11.text = self.position[10]
            
            self.r12.text = self.position[11]
            
        }
        
        let hour = NSCalendar.currentCalendar().components(.Hour, fromDate: NSDate()).hour
        let minutes = NSCalendar.currentCalendar().components(.Minute, fromDate: NSDate()).minute
        let month = NSCalendar.currentCalendar().components(.Month, fromDate: NSDate()).month
        let year = NSCalendar.currentCalendar().components(.Year, fromDate: NSDate()).year
        let day = NSCalendar.currentCalendar().components(.Day, fromDate: NSDate()).day
        let second = NSCalendar.currentCalendar().components(.Second, fromDate: NSDate()).second
        
        timeShow = "\(year) \(month) \(day), \(hour):\(minutes):\(second)"
        
        self.displayTime.text = "\(self.timeShow)"
        
        self.displayArea.text = "\(self.uniqueID)"
        
        
    }
    
    
    @IBOutlet weak var displayArea: UILabel!
    
    @IBOutlet weak var displayTime: UILabel!
    
    
    
    @IBOutlet weak var r1: UILabel!
    
    @IBOutlet weak var r2: UILabel!
    
    @IBOutlet weak var r3: UILabel!
    
    @IBOutlet weak var r4: UILabel!
    
    
    
    @IBOutlet weak var r5: UILabel!
    
    @IBOutlet weak var r6: UILabel!
    
    @IBOutlet weak var r7: UILabel!
    
    @IBOutlet weak var r8: UILabel!
    
    
    @IBOutlet weak var r9: UILabel!
    
    @IBOutlet weak var r10: UILabel!
    
    @IBOutlet weak var r11: UILabel!
    
    @IBOutlet weak var r12: UILabel!
    
    
    
    func randomStringWithLength (len : Int) -> NSString {
        
        let lettersAfter : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let letterFirst : NSString = "ABCDEF123"
        
        let randomString : NSMutableString = NSMutableString(capacity: len)
        let randomStringFirst : NSMutableString = NSMutableString(capacity: 1)
        
        
        for (var i=0; i < len; i++){
            let length = UInt32 (lettersAfter.length)
            let rand = arc4random_uniform(length)
            randomString.appendFormat("%C", lettersAfter.characterAtIndex(Int(rand)))
        }
        
        for (var i=0; i < 1; i++){
            let length = UInt32 (letterFirst.length)
            let rand = arc4random_uniform(length)
            randomStringFirst.appendFormat("%C", letterFirst.characterAtIndex(Int(rand)))
        }
        
        
        uniqueID = "\(randomStringFirst)\(randomString)"
        
        return randomString
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

