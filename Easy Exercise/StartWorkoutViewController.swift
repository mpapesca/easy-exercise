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
        
        setupLogo()
        hideLogo()
        showContent()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var logoImage: UIImage!
    var logoView: UIView!
    
    
    /*** Create and hide logo programmatically here. ***/
    
    func setupLogo() { //Add logo to view to match launch screen image.
        
        logoImage = UIImage(named: "EZ_EX_app_icon")
        logoView = UIImageView(image: logoImage)
        logoView.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        view.addSubview(logoView)
    }
    
    func hideLogo() { //Fade logo out to allow content to be displayed.
        UIView.animateWithDuration(0.5) { () -> Void in
            self.logoView.alpha = 0.0
        }
        logoView.removeFromSuperview()
    }
    
    func showContent() {
        
    }
}