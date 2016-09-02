//
//  ViewController + AddAnimation.swift
//  AnimationSwiftOriginal
//
//  Created by TAKU on 2016/09/02.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

extension ViewController {
    
    //左から真ん中へ移動するアニメーション
    func moveAnimation(){
        let rightToLeftAnimation = CABasicAnimation(keyPath: "position.x")
        
        rightToLeftAnimation.fromValue = -view.bounds.size.width / 2
        
        rightToLeftAnimation.toValue = view.bounds.size.width / 2
        
        rightToLeftAnimation.duration = 1.0
        
        rightToLeftAnimation.fillMode = kCAFillModeBackwards
        
        rightToLeftAnimation.delegate = self
        
        rightToLeftAnimation.setValue(mainView.imageView.layer, forKey: "layer")
        
        mainView.imageView.layer.addAnimation(rightToLeftAnimation, forKey: nil)
    }
    
    //真ん中で回転するアニメーション
    func rotationAnimation(){
        let rotation = CABasicAnimation(keyPath: "transform")
        
        rotation.duration = 0.5
        
        rotation.repeatCount = 3
        
        rotation.autoreverses = false
        
        rotation.fromValue = NSValue(CATransform3D: CATransform3DIdentity)
        
        rotation.toValue = NSValue(CATransform3D: CATransform3DMakeRotation(CGFloat(M_PI), 0, 1, 0))
        
        rotation.setValue(mainView.imageView.layer, forKey: "layer")
        
        mainView.imageView.layer.addAnimation(rotation, forKey: nil)
        
    }
    
    //サイズを変更するアニメーション
    func chageScaleAnimetion(){
        let scale = CABasicAnimation(keyPath: "bounds.size")
        
        scale.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        
        scale.fromValue = NSValue(CGSize:CGSizeMake(103, 93))
        
        scale.toValue = NSValue(CGSize:CGSizeMake(300, 300))
        
        scale.duration = 0.5
        
        scale.setValue(mainView.imageView.layer, forKey: "layer")
        
        mainView.imageView.layer.addAnimation(scale, forKey: nil)
        
    }
    
    
}