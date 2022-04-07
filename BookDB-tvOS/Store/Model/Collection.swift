//
//  Collection.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

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

