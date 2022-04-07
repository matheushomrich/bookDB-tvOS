//
//  GenericExtensions.swift
//  BookDB-tvOS
//
//  Created by Matheus Homrich on 05/04/22.
//

import Foundation
import UIKit

extension UIImageView {
    func circleImage() {
        
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
        
    }
}

extension UIView {
    
    static var motionEffectGroup: UIMotionEffectGroup {
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontalMotionEffect.minimumRelativeValue = -8.0
        horizontalMotionEffect.maximumRelativeValue = 8.0
        
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        verticalMotionEffect.minimumRelativeValue = -8.0
        verticalMotionEffect.maximumRelativeValue = 8.0
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        
        return motionEffectGroup
    }
    
}

