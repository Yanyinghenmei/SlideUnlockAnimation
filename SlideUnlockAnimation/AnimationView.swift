//
//  AnimationView.swift
//  SlideUnlockAnimation
//
//  Created by Daniel on 15/12/31.
//  Copyright © 2015年 Daniel. All rights reserved.
//

import UIKit

class AnimationView: UIView {
    
    //通过监听设置动画
    var isAnimation:Bool = false {
        didSet {
            if isAnimation {
                animation = CABasicAnimation(keyPath: "locations")
                animation?.duration = 2
                animation?.fromValue = [-0.5,-0.25,0]
                animation?.toValue = [1,1.25,1.5]
                animation?.repeatCount = HUGE
                animation?.isRemovedOnCompletion = false
                
                gradientLayer!.add(animation!, forKey: nil)
            }
        }
    }
    
    //通过重写setter方法设置颜色 其实也可以使用监听 重写setter getter之后就成了计算属性 不存储变量
    var colors:[CGColor] {
        set(newColors) {
            gradientLayer!.colors = newColors
        }
        get {
            return gradientLayer?.colors as! [CGColor]
        }
    }
    
    var gradientLayer:CAGradientLayer?
    var animation:CABasicAnimation?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let imageView:UIImageView = UIImageView(frame: self.bounds)
        imageView.image = UIImage(named: "iconfont-p0up")
        self.addSubview(imageView)
        
        gradientLayer = CAGradientLayer()
        gradientLayer!.bounds = self.bounds
        gradientLayer!.position = CGPoint(x: frame.width/2, y: frame.height/2)
        
//        gradientLayer!.colors = [UIColor.blackColor().CGColor,
//                                 UIColor.whiteColor().CGColor,
//                                 UIColor.blackColor().CGColor];
        
        gradientLayer!.locations = [0.2,0.5,0.8];
        
        gradientLayer!.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer!.endPoint = CGPoint(x: 0.5, y: 0)
        
        self.layer.addSublayer(gradientLayer!)
        gradientLayer!.mask = imageView.layer
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
