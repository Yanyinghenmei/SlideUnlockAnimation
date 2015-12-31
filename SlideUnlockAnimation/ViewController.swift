//
//  ViewController.swift
//  SlideUnlockAnimation
//
//  Created by Daniel on 15/12/31.
//  Copyright © 2015年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        
        let aniView = AnimationView(frame: CGRectMake(self.view.frame.width/2-35, self.view.frame.height/2-70, 70, 70))
        aniView.isAnimation = true
        aniView.colors = [UIColor.redColor().CGColor,
                          UIColor.yellowColor().CGColor,
                          UIColor.redColor().CGColor]
        self.view.addSubview(aniView)
        
        
        let aniLabel = AnimationLabel(frame: CGRectMake(self.view.frame.width/2-100, CGRectGetMaxY(aniView.frame)+10, 200, 40))
        aniLabel.isAnimation = true
        aniLabel.colors = [UIColor.blackColor().CGColor,
                           UIColor.whiteColor().CGColor,
                           UIColor.blackColor().CGColor]
        self.view.addSubview(aniLabel)
    }
}

