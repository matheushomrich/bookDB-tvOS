//
//  LibraryViewController.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryCollectionView: UICollectionView!

    let cellIdentifier = "library-cell"

    let focusGuide: UIFocusGuide = UIFocusGuide()

    let books: [Book] = Book.books

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLibraryCollectionView()
        setBackgroundColor()

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

    func setBackgroundColor() {
        self.view.backgroundColor = UIColor.blue

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
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LibraryCollectionViewCell

            let book = books[indexPath.row]

            //cell.coverImageView.image = UIImage(named: book.title)
            cell.titleLabel.text = book.title

            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! LibraryCollectionViewCell

            let book = books[indexPath.row]

            //cell.coverImageView.image = UIImage(named: book.title)
            cell.titleLabel.text = book.title

            return cell

        }

    }
}

extension LibraryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {


    }


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected item")
    }
}

extension LibraryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 250)
    }
}
