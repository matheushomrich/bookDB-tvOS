//
//  Collection.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

import UIKit

struct Collection {
    let title: String
    let image: UIImage
}

extension Collection {
    static var collections: [Collection] {
        [
            Collection(title: "Coming Soon", image: UIImage(named: "one")!),
            Collection(title: "Read before watching", image: UIImage(named: "two")!),
            Collection(title: "Awarded Books", image: UIImage(named: "three")!),
            Collection(title: "Brazillian Books", image: UIImage(named: "four")!),
            Collection(title: "Classic Books", image: UIImage(named: "five")!),
            Collection(title: "Most sold Books", image: UIImage(named: "six")!)
        ]
    }
}

