//
//  UIView+Extensions.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

import UIKit

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
