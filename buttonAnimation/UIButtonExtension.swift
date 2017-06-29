//
//  UIButtonExtension.swift
//  buttonAnimation
//
//  Created by Vijay Adhikari on 29/06/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.

import Foundation
import  UIKit

extension UIButton{

    func pulState(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.9
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 8
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    }
    
    func flash(){
    
        let flash = CABasicAnimation(keyPath:"opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.5
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 7
        layer.add(flash, forKey: nil)
    }
    
    func shake(){
    
        let shake = CABasicAnimation(keyPath:"position")
        shake.duration = 0.1
        shake.repeatCount = 8
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y : center.y)
        let fromValue = NSValue(cgPoint : fromPoint)
        
        let toPoint = CGPoint(x : center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint:toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        layer.add(shake, forKey: nil)
        
    
    }
}
