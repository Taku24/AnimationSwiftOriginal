//
//  ViewController.swift
//  AnimationSwiftOriginal
//
//  Created by TAKU on 2016/09/02.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        moveAnimation()
    }
    
    //アニメーションが終わると呼ばれるメソッド
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        let layer = anim.valueForKey("layer") as? CALayer
        anim.setValue(nil, forKey: "layer")
        
        let buruburuAnimation = CABasicAnimation(keyPath: "transform.scale")
        buruburuAnimation.fromValue = 1.25
        buruburuAnimation.toValue = 1.0
        buruburuAnimation.duration = 0.25
        layer?.addAnimation(buruburuAnimation, forKey: nil);
    }


}

// MARK: AddMethod

extension ViewController {

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
    
}

