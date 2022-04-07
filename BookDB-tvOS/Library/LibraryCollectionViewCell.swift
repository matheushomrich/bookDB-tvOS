//
//  LibraryCollectionViewCell.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import UIKit

class LibraryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

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
                self.titleLabel.transform = .identity
                self.titleLabel.isHidden = false
            }
        }

        if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations {
                self.motionEffects.removeAll()
                self.transform = .identity
                self.titleLabel.transform = CGAffineTransform(scaleX: .zero, y: .zero)
                self.titleLabel.isHidden = true
            }
        }

    }

    private func configureInitialAppearance() {
        //self.coverImageView.transform = CGAffineTransform(scaleX: .zero, y: .zero)
        coverImageView.layer.cornerRadius = 10
        coverImageView.clipsToBounds = true
        titleLabel.isHidden = true
    }

}
