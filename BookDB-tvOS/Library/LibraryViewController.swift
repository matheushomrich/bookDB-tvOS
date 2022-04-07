//
//  LibraryViewController.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import UIKit

class LibraryViewController: UIViewController {
    
    @IBOutlet weak var libraryCollectionView: UICollectionView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var booksLogoImageView: UIImageView!
    
    let cellIdentifier = "library-cell"
    let headerIdentifier = "libraryHeaderView"
    
    let focusGuide: UIFocusGuide = UIFocusGuide()
    
    let books: [Book] = Book.books
    
    var selectedBook: Book? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLibraryCollectionView()
        setupBackgroundColor()
        setupLogoImage()
        setupProfileImage()
        
        view.addLayoutGuide(focusGuide)
        
        NSLayoutConstraint.activate([
            focusGuide.bottomAnchor.constraint(equalTo: libraryCollectionView.topAnchor),
            focusGuide.leftAnchor.constraint(equalTo: libraryCollectionView.leftAnchor),
            focusGuide.widthAnchor.constraint(equalTo: libraryCollectionView.widthAnchor),
            focusGuide.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupLibraryCollectionView() {
        libraryCollectionView.dataSource = self
        libraryCollectionView.delegate = self
        
    }
    
    func setupBackgroundColor() {
        self.view.backgroundColor = UIColor.black
        
    }
    
    func setupLogoImage() {
        booksLogoImageView.image = UIImage(named: "Books Logo")
        booksLogoImageView.layer.cornerRadius = 20
    }
    
    func setupProfileImage() {
        profileImageView.image = UIImage(named: "Dharana-profile-pic")
        profileImageView.layer.cornerRadius = 40
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        guard let previous = context.previouslyFocusedView,
              let next = context.nextFocusedView else { return }
        
        focusGuide.isEnabled = !(next is UICollectionViewCell)
        focusGuide.preferredFocusEnvironments = [previous]
        
        //        print(#function)
    }
    
}

extension LibraryViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LibraryCollectionViewCell
            
            let book = books[indexPath.row]
            
            cell.coverImageView.image = UIImage(named: book.title)
            cell.titleLabel.text = book.title
            
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LibraryCollectionViewCell
            
            let book = books[indexPath.row]
            
            cell.coverImageView.image = UIImage(named: book.title)
            cell.titleLabel.text = book.title
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
            // 1
        case UICollectionView.elementKindSectionHeader:
            // 2
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: headerIdentifier,
                for: indexPath)
            
            // 3
            guard let typedHeaderView = headerView as? LibraryHeaderView
            else { return headerView }
            
            // 4
            typedHeaderView.sectionTitleLabel.text = typedHeaderView.sectionsTitles[indexPath.section]
            return typedHeaderView
        default:
            // 5
            assert(false, "Invalid element type")
        }
    }
}

extension LibraryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let LandingVC = segue.destination as? DetailsViewController else { return }
        LandingVC.book = selectedBook
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected item")
        selectedBook = self.books[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    
}

extension LibraryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 205, height: 307)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 90, height: 45)
    }
    
}
