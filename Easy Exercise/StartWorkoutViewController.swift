//
//  StartWorkoutViewController.swift
//  Easy Exercise
//
//  Created by Michael Papesca on 1/2/16.
//  Copyright © 2016 datomi. All rights reserved.
//

import UIKit

class StartWorkoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateLogo()
        showContent()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var logoImage: UIImage!
    var logoView: UIView!
    
    
    /*** Create and hide logo programmatically here. ***/
    
    func animateLogo() { //Add logo to view to match launch screen image then fade it out.
        
        logoImage = UIImage(named: "EZ_EX_app_icon")
        logoView = UIImageView(image: logoImage)
        logoView.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        view.addSubview(logoView)
        
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.logoView.alpha = 0.0
        }
        logoView.removeFromSuperview()
    }
    
    
    
    func showContent() { //Fade in content of this view
        //TODO: show content
        setupContent()
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.dateHeader.alpha = 1.0
            self.startButton.alpha = 1.0
            self.workoutDay.alpha = 1.0
            self.dailyCalories.alpha = 1.0
            self.dailyCaloriesTitle.alpha = 1.0
            self.addMealButton.alpha = 1.0
        }
    }
    
    @IBOutlet weak var dateHeader: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var workoutDay: UILabel!
    @IBOutlet weak var dailyCaloriesTitle: UILabel!
    @IBOutlet weak var dailyCalories: UILabel!
    @IBOutlet weak var addMealButton: UIButton!
    @IBOutlet weak var weekDay: UILabel!
    
    func setupContent() {
        dateHeader.alpha = 0.0
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.LongStyle
        let dateString = formatter.stringFromDate(date)
        
        dateHeader.text = dateString
        
        startButton.alpha = 0.0
        
        workoutDay.text = "Day 3 of 48"
        workoutDay.alpha = 0.0
        
        dailyCaloriesTitle.alpha = 0.0
        
        dailyCalories.text = "1563/2000"
        dailyCalories.alpha = 0.0
        
        addMealButton.alpha = 0.0
        
        
    }
    
//    func getDayOfWeek(today:String)->Int {
//        
//        let formatter  = NSDateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd"
//        let todayDate = formatter.dateFromString(today)!
//        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
//        let myComponents = myCalendar.components(.Weekday, fromDate: todayDate)
//        let weekDay = myComponents.weekday
//        return weekDay
//    }
    
    
}