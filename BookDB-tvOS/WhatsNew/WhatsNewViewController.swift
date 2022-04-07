//
//  WhatsNewViewController.swift
//  BookDB-tvOS
//
//  Created by Matheus Homrich on 04/04/22.
//

import UIKit


class WhatsNewViewController: UIViewController {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var newsCollectionView: UICollectionView!
    @IBOutlet weak var booksCollectionView: UICollectionView!
    
    let collections: [Collection] = Collection.collections
    let books: [Book] = Book.books
    var selectedBook: Book? = nil
    
    let focusGuide: UIFocusGuide = UIFocusGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViews()
        profileImage.layer.cornerRadius = 40
        bookImage.layer.cornerRadius = 20
    }
    
    
    private func setupCollectionViews() {
        newsCollectionView.dataSource = self
        newsCollectionView.delegate = self
        booksCollectionView.dataSource = self
        booksCollectionView.delegate = self
        newsCollectionView.layer.cornerRadius = 16
        booksCollectionView.layer.cornerRadius = 16
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        guard let previous = context.previouslyFocusedView,
              let next = context.nextFocusedView else { return }
        
        focusGuide.isEnabled = !(next is UICollectionViewCell)
        focusGuide.preferredFocusEnvironments = [previous]
        
    }
}

extension WhatsNewViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.newsCollectionView {
            return collections.count
        } else {
            return books.count
            
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.newsCollectionView {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "news-cell", for: indexPath) as! NewsCollectionViewCell
            
            let collection = collections[indexPath.row]
            
            cellA.collectionLabel .text = collection.title
            cellA.collectionImageView.image = collection.image
            
            return cellA
        } else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "books-cell", for: indexPath) as! BooksCollectionViewCell
            
            let book = books[indexPath.row]
            
            cellB.bookImageView.image = UIImage(named: book.title)
            
            return cellB
        }
        
    }
    
}

extension WhatsNewViewController: UICollectionViewDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let LandingVC = segue.destination as? DetailsViewController else { return }
        LandingVC.book = selectedBook
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.booksCollectionView {
            print("Selected item")
            selectedBook = self.books[indexPath.row]
            performSegue(withIdentifier: "toDetail", sender: self)
            
        }
    }
    
}

extension WhatsNewViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView ==  self.newsCollectionView {
            return CGSize(width: 560, height: 300)
        } else {
            return CGSize(width: 200, height: 300)
        }
        
    }
    
}
