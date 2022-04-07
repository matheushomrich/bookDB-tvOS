//
//  ReadingWeekCollectionViewCell.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

import UIKit

class BooksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImageView: UIImageView!
    
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
            }
        }
        
        if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.motionEffects.removeAll()
                self.transform = .identity
            }
        }
    }
    
    private func configureInitialAppearance() {
        bookImageView.layer.cornerRadius = 10
        bookImageView.clipsToBounds = true
    }
}
