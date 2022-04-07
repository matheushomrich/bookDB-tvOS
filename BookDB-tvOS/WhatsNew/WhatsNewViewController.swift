//
//  WhatsNewViewController.swift
//  BookDB-tvOS
//
//  Created by Matheus Homrich on 04/04/22.
//

import UIKit


struct Book {
    let image: UIImage
    let name: String
}

struct New {
    let name: String
}


class WhatsNewViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var newsCollectionView: UICollectionView!
    @IBOutlet weak var booksCollectionView: UICollectionView!
    
    let newsIdentifier = "news-cell"
    let booksIdentifier = "book-cell"
    
    
    let book1 = Book(image: UIImage(named: "a")!, name: "book")
    let new1 = New(name: "Soon")
    
    var books: [Book] = []
    var news: [New] = []
    
    let focusGuide: UIFocusGuide = UIFocusGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViews()
        profileImage.image = UIImage(named: "a")
        profileImage.circleImage()
        
        books.append(book1)
        news.append(new1)
        
        //        view.addLayoutGuide(focusGuide)
        //
        //        NSLayoutConstraint.activate([
        //            focusGuide.bottomAnchor.constraint(equalTo: newsCollectionView.topAnchor),
        //            focusGuide.leftAnchor.constraint(equalTo: newsCollectionView.leftAnchor),
        //            focusGuide.widthAnchor.constraint(equalTo: newsCollectionView.widthAnchor),
        //            focusGuide.heightAnchor.constraint(equalToConstant: 50),
        //
        //            focusGuide.bottomAnchor.constraint(equalTo: booksCollectionView.topAnchor),
        //            focusGuide.leftAnchor.constraint(equalTo: booksCollectionView.leftAnchor),
        //            focusGuide.widthAnchor.constraint(equalTo: booksCollectionView.widthAnchor),
        //            focusGuide.heightAnchor.constraint(equalToConstant: 50)
        //        ])
        
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
            return news.count
        } else {
            return books.count
            
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: newsIdentifier, for: indexPath) as! NewsCollectionViewCell
            
            let new = news[indexPath.row]
            
            cell.newsLabel.text = new.name
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: booksIdentifier, for: indexPath) as! BooksCollectionViewCell
            
            let book = books[indexPath.row]
            
            cell.bookImageView.image = UIImage(named: book.name)
            
            return cell
        }
        
    }
    
}

//extension WhatsNewViewController: UICollectionViewDelegate {
//
//    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
//
//        guard let indexPath = context.nextFocusedIndexPath else { return }
//
//        if indexPath.row == 0 {
//            let news = news[indexPath.row]
//
//            UIView.transition(with: backgroundImageView,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve) {
//                self.backgroundImageView.image = UIImage(named: movie.name)
//            }
//        } else {
//            UIView.transition(with: backgroundImageView,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve) {
//                self.backgroundImageView.image = UIImage(named: movie.name)
//        }
//
//
//    }
//
//    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    //        let digitEntry = TVDigitEntryViewController()
//    //        present(digitEntry, animated: true)
//    //    }
//
//}

extension WhatsNewViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 660, height: 400)
        } else {
            return CGSize(width: 200, height: 300)
        }
        
        
    }
    
}

struct Collection {
    let title: String
}

extension Collection {
    static var collections: [Collection] {
        [
            Collection(title: "Em breve"),
            Collection(title: "Leia antes de assistir"),
            Collection(title: "Livros premiados"),
            Collection(title: "Livros ruins")
        ]
    }
}
