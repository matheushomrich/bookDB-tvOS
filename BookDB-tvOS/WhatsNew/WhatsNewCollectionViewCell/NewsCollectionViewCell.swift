//
//  NewsCollectionViewCell.swift
//  BookDB-tvOS
//
//  Created by Matheus Homrich on 05/04/22.
//

import Foundation
import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureInitialAppearance()
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        print(#function)
        
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.addMotionEffect(UIView.motionEffectGroup)
                self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                self.newsLabel.transform = .identity
            }
        }
        
        if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.motionEffects.removeAll()
                self.transform = .identity
                self.newsLabel.transform = CGAffineTransform(scaleX: .zero, y: .zero)
            }
        }
        
    }
    
    private func configureInitialAppearance() {
        self.newsLabel.transform = CGAffineTransform(scaleX: .zero, y: .zero)
        //newsImageView.layer.cornerRadius = 10
        //newsImageView.clipsToBounds = true
    }

    
}
