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
        
        //アニメーションの始点
        rightToLeftAnimation.fromValue = -view.bounds.size.width / 2
        
        //アニメーションの終点
        rightToLeftAnimation.toValue = view.bounds.size.width / 2
        
        //アニメーションに長さ
        rightToLeftAnimation.duration = 1.0
        
        rightToLeftAnimation.fillMode = kCAFillModeBackwards
        
        rightToLeftAnimation.delegate = self
        
        rightToLeftAnimation.setValue(mainView.imageView.layer, forKey: "layer")
        
        mainView.imageView.layer.addAnimation(rightToLeftAnimation, forKey: nil)
    }
    
    //真ん中で回転するアニメーション
    func rotationAnimation(){
        let anime = CABasicAnimation(keyPath: "transform")
        
        //アニメーションの長さ
        anime.duration = 0.5
                
        anime.repeatCount = 1
        
        anime.autoreverses = true
        
        anime.fromValue = NSValue(CATransform3D: CATransform3DIdentity)
        
        anime.toValue = NSValue(CATransform3D: CATransform3DMakeRotation(CGFloat(M_PI), 0, 1, 0))
        
        mainView.imageView.layer.addAnimation(anime, forKey: "rotation")
        
    }
    
    
}