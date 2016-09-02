//
//  ViewController + Animations.swift
//  AnimationSwiftOriginal
//
//  Created by TAKU on 2016/09/02.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

extension ViewController {
    
    func gruopAnimations(){
        mainView.imageView.backgroundColor = UIColor.blueColor()
        
        let cornerAnimation = changeCornerRadius()
        let sizeAnimation = changeScale()
        
        let animationGroup = CAAnimationGroup()
        animationGroup.setValue("groupAnimation", forKey: "animationName")
        animationGroup.animations = [cornerAnimation, sizeAnimation]
        animationGroup.duration = 2.0
        animationGroup.delegate = self
        
        animationGroup.removedOnCompletion = false
        mainView.imageView.layer.addAnimation(animationGroup, forKey: "layer")
    }
    
    func changeCornerRadius() -> CABasicAnimation{
        let cornerAnimation = CABasicAnimation(keyPath: "cornerRadius")
        cornerAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        cornerAnimation.fromValue = 0
        cornerAnimation.toValue = 150
        
        return cornerAnimation
    }
    
    func changeScale() -> CABasicAnimation{
        let sizeAnimation = CABasicAnimation(keyPath: "bounds.size")
        sizeAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        sizeAnimation.fromValue = NSValue(CGSize:CGSizeMake(103, 93))
        sizeAnimation.toValue = NSValue(CGSize:CGSizeMake(300, 300))
        
        return sizeAnimation
    }
}
