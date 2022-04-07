//
//  StoreViewController.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 05/04/22.
//

import UIKit
import TVUIKit

class StoreViewController: UIViewController {
    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var readingWeekCollectionView: UICollectionView!
    @IBOutlet weak var unmissableCollectionView: UICollectionView!
    @IBOutlet weak var booksIcon: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var selectedBook: Book? = nil
    
    let focusGuide: UIFocusGuide = UIFocusGuide()
    
    let collections: [Collection] = Collection.collections
    let books: [Book] = Book.books
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBooks()
        
        view.addLayoutGuide(focusGuide)
        
        booksIcon.layer.cornerRadius = 20
        profileImageView.layer.cornerRadius = 40
    }
    
    private func setupBooks() {
        topCollectionView.dataSource = self
        topCollectionView.delegate = self
        readingWeekCollectionView.dataSource = self
        readingWeekCollectionView.delegate = self
        unmissableCollectionView.dataSource = self
        unmissableCollectionView.delegate = self
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        guard let previous = context.previouslyFocusedView,
              let next = context.nextFocusedView else { return }
        
        focusGuide.isEnabled = !(next is UICollectionViewCell)
        focusGuide.preferredFocusEnvironments = [previous]
    }
}

extension StoreViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.topCollectionView {
            return collections.count
        }
        
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.topCollectionView {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "topCollectionCell", for: indexPath) as! TopCollectionViewCell
            
            let collection = collections[indexPath.row]
            
            cellA.collectionLabel.text = collection.title
            cellA.collectionImageView.image = collection.image
            
            return cellA
        } else if collectionView == self.readingWeekCollectionView {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "readingWeekCollectionCell", for: indexPath) as! ReadingWeekCollectionViewCell
            
            let book = books[indexPath.row]
            
            cellB.bookImageView.image = UIImage(named: book.title)
            
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "unmissableCollectionCell", for: indexPath) as! UnmissableCollectionViewCell
            
            let book = books[indexPath.row]
            
            cellC.bookImageView.image = UIImage(named: book.title)
            
            return cellC
        }
    }
}

extension StoreViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let LandingVC = segue.destination as? DetailsViewController else { return }
        LandingVC.book = selectedBook
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView != self.topCollectionView {
            selectedBook = self.books[indexPath.row]
            performSegue(withIdentifier: "toDetail", sender: self)
            
        }
    }
    
}


extension StoreViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.topCollectionView {
            return CGSize(width: 561, height: 340)
        } else {
            return CGSize(width: 205, height: 307)
        }
    }
}
