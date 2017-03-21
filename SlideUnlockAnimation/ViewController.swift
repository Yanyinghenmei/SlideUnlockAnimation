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
        
        self.view.backgroundColor = UIColor.gray
        
        let aniView = AnimationView(frame: CGRect(x: self.view.frame.width/2-35, y: self.view.frame.height/2-70, width: 70, height: 70))
        aniView.isAnimation = true
        aniView.colors = [UIColor.red.cgColor,
                          UIColor.yellow.cgColor,
                          UIColor.red.cgColor]
        self.view.addSubview(aniView)
        
        
        let aniLabel = AnimationLabel(frame: CGRect(x: self.view.frame.width/2-100, y: aniView.frame.maxY+10, width: 200, height: 40))
        aniLabel.isAnimation = true
        aniLabel.colors = [UIColor.black.cgColor,
                           UIColor.white.cgColor,
                           UIColor.black.cgColor]
        self.view.addSubview(aniLabel)
    }
}

