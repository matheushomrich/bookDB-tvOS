//
//  Book.swift
//  BookDB-tvOS
//
//  Created by Nicolas Godoy on 06/04/22.
//

struct Book {
    let title: String
    let author: String
    let overview: String
    let price: String
    let rate: String
    let isOwned: Bool
}

extension Book {
    static var books: [Book] {
        [
            Book(
                title: "Teste 1",
                author: "Zézin",
                overview: "Muitas coisas",
                price: "R$ 29,97",
                rate: "4,9",
                isOwned: false
            ),
            Book(
                title: "Teste 2",
                author: "Zézinzin",
                overview: "Altas treta",
                price: "R$ 19,26",
                rate: "4,5",
                isOwned: true
            ),
            Book(
                title: "Teste 1",
                author: "Zézin",
                overview: "Muitas coisas",
                price: "R$ 29,97",
                rate: "4,9",
                isOwned: false
            ),
            Book(
                title: "Teste 2",
                author: "Zézinzin",
                overview: "Altas treta",
                price: "R$ 19,26",
                rate: "4,5",
                isOwned: true
            ),
            Book(
                title: "Teste 1",
                author: "Zézin",
                overview: "Muitas coisas",
                price: "R$ 29,97",
                rate: "4,9",
                isOwned: false
            ),
            Book(
                title: "Teste 2",
                author: "Zézinzin",
                overview: "Altas treta",
                price: "R$ 19,26",
                rate: "4,5",
                isOwned: true
            ),
            Book(
                title: "Teste 1",
                author: "Zézin",
                overview: "Muitas coisas",
                price: "R$ 29,97",
                rate: "4,9",
                isOwned: false
            ),
            Book(
                title: "Teste 2",
                author: "Zézinzin",
                overview: "Altas treta",
                price: "R$ 19,26",
                rate: "4,5",
                isOwned: true
            ),
        ]
    }
}
