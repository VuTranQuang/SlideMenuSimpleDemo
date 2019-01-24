//
//  ViewController.swift
//  SlideMenuSimpleDemo
//
//  Created by Vũ on 1/3/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gradients = Gradient()
    @IBOutlet weak var backGroudButton: UIButton!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideMenu: UIView! {
        didSet {
            self.sideMenu.layer.shadowColor = UIColor.red.cgColor
            self.sideMenu.layer.shadowOpacity = 0.9
            self.sideMenu.layer.shadowRadius = 0
            self.sideMenu.layer.shadowOffset = CGSize(width: 50, height: 0)
//            self.sideMenu.alpha = self.gradientLayer.bounds.size.width
        }
    }

    
    var menuShowing = false {
        didSet {
            UIView.animate(withDuration: 0.35, delay: 0.0, options: .curveEaseIn, animations: {
                self.leadingConstraint.constant = self.menuShowing ? 0 : -self.sideMenu.bounds.size.width
                self.backGroudButton.alpha = self.menuShowing ? 1 : 0
                self.sideMenu.alpha = self.menuShowing ? 1 : 0
                self.view.layoutIfNeeded()
            })
           
        }
        
    }
//    var gradientLayer = CAGradientLayer() {
//        didSet {
//            gradientLayer.frame = self.view.bounds
//            let color1 = UIColor.yellow.cgColor
//            let color2 = UIColor.red.cgColor
//            let color3 = UIColor.clear.cgColor
//            let color4 = UIColor(white: 0.0, alpha: 0.7).cgColor
//            gradientLayer.colors = [color1, color2, color3, color4]
//            gradientLayer.locations = [0.0, 0.25, 0.75, 1.0]
//            gradientLayer.startPoint = CGPoint(x: 1, y: 0)
//            gradientLayer.endPoint = CGPoint(x: 0, y: 0)
//            self.view.layer.addSublayer(gradientLayer)
//            self.view.backgroundColor = UIColor.green
////            gradientLayer.frame = self.view.bounds
////            let color1 = UIColor.red.cgColor
////            let color = UIColor(white: 0.5, alpha: 1.0).cgColor
////
////            gradientLayer.colors = [color, color1]
////            gradientLayer.locations = [0.0, 0.25, 0.75, 1.0]
////            gradientLayer.startPoint = CGPoint(x: 1, y: 0)
////            gradientLayer.endPoint = CGPoint(x: 0, y: 0)
////            self.view.layer.addSublayer(gradientLayer)
////            self.view.backgroundColor = UIColor.red
//        }
//    }
    
//    func isOne() -> Bool {
//        if menuShowing == false {
//            return self.backGroudButton.c
//        }
//        return self.backGroudButton.contentScaleFactor == 1
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuShowing = false
    }
    
//    func setGradientForShadow() {
//        gradientLayer.frame = self.view.bounds
//        let color = UIColor(white: 0.0, alpha: 0.7).cgColor
//        gradientLayer.colors = [color]
//        self.view.layer.addSublayer(gradientLayer)
//        self.view.backgroundColor = UIColor.green
//    }
    
    @IBAction func openMenu(_ sender: Any) {
       menuShowing = !menuShowing

        
    }
   
    @IBAction func hideButton(_ sender: Any) {
        menuShowing = false
    }
}

