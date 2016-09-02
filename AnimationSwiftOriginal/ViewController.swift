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
        //コメントアウトを外すと実行できます。
//        moveAnimation()
//        rotationAnimation()
//        chageScaleAnimetion()
        gruopAnimations()
    }
    
    //アニメーションが終わると呼ばれるメソッド
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        
    }


}