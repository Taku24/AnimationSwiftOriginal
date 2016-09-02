//
//  MainView.swift
//  AnimationSwiftOriginal
//
//  Created by TAKU on 2016/09/02.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let nibName = "MainView"
    var view: UIView!

    required override init(frame: CGRect) {
        super.init(frame: frame)
        
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func createView(){
        view = loadFromNib()
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleWidth]
        addSubview(view)
    }
    
    func loadFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        
        return view
    }

}
