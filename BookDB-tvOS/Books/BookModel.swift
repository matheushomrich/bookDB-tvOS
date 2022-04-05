//
//  BookModel.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import Foundation

struct Book {
    let title: String
    let overview: String

    static var books: [Book] {
        [
            Book(title: "Teste 1", overview: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
            Book(title: "Teste 2", overview: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
            Book(title: "Teste 3", overview: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
            Book(title: "Teste 4", overview: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
        ]
    }
}
