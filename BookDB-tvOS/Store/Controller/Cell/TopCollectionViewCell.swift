//
//  TopCollectionViewCell.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var collectionImageView: UIImageView!
    @IBOutlet weak var collectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureInitialAppearance()
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.addMotionEffect(UIView.motionEffectGroup)
                self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                self.collectionLabel.transform = .identity
            }
        }
        
        if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.motionEffects.removeAll()
                self.transform = .identity
                self.collectionLabel.transform = CGAffineTransform(scaleX: .zero, y: .zero)
            }
        }
    }
    
    private func configureInitialAppearance() {
        self.collectionLabel.transform = CGAffineTransform(scaleX: .zero, y: .zero)
        collectionImageView.layer.cornerRadius = 10
        collectionImageView.clipsToBounds = true
    }
}
