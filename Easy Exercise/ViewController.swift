//
//  ViewController.swift
//  Easy Exercise
//
//  Created by Michael Papesca on 1/2/16.
//  Copyright © 2016 datomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var time = 1000.0
    var timer = NSTimer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        // Do any additional setup after loading the view, typically from a nib.
        
        updateText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimer() {
        timer = NSTimer(timeInterval: 0.1, target: self, selector: "countDown", userInfo: nil, repeats: true)
    NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }

    func startPulse() {
        timer = NSTimer(timeInterval: 0.5, target: self, selector: "pulseText", userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }
    
    func countDown() {
        
        time -= 0.1
        if time <= 0 {
            timer.invalidate()
            time = 0
        }
        
        updateText()
        
        
        
    }
    
    @IBAction func reset() {
        
        timer.invalidate()
        
        time = 0
        updateText()
    }
    
    func updateText() {
        let hour:Double
        let minute:Double
        let second:Double
        
        if time >= 3600{
            hour = (time - time%3600.0)/3600.0
        } else {
            hour = 0
        }
        
        if time >= 3600 {
            minute = (time - hour*3600.0)/60.0
        } else if time >= 60 {
            minute = (time - time%60.0)/60.0
        } else {
            minute = 0
        }
        
        second = time - (hour*3600.0) - (minute*60.0)
        
        
        let text = String(format: "%02d" ,hour) + ":" + String(format: "%02d" ,minute) + ":" + String(format: "%02.01f" ,second)
        
        timerLabel.text = text
    }

}

