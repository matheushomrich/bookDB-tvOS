//
//  BookModel.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import Foundation

struct Book {
    let title: String
    let author: String
    let overview: String
    let isOwned: Bool
    let price: Double
    let rate: Double

    static var books: [Book] {
        [
            Book(title: "Steve Jobs",
                 author: "Walter Isaacson",
                 overview: "The book, based on more than forty interviews with Jobs over two years - and interviews with more than one hundred family members, friends, colleagues, opponents, and competitors - chronicles the eventful life of the wildly inventive entrepreneur with a strong and controversial personality, whose passion for perfection and indomitable energy revolutionized six major industries: personal computing, animation film, music, mobile telephony, tablet computing, and digital publishing.",
                 isOwned: true,
                 price: 49.90,
                 rate: 4.9),

            Book(title: "Essencialismo",
                 author: "Greg Mckeown",
                 overview: "THE ESSENTIALIST DOESN'T DO MORE THINGS IN LESS TIME - HE DOES JUST THE RIGHT THINGS.  If you feel overwhelmed and yet underutilized, busy but unproductive, and if your time seems to serve only the interests of others, you need to know essentialism.  Essentialism is more than a time management strategy or a productivity technique. It is a method for identifying what is vital and eliminating everything else, so that we can make the greatest possible contribution to what really matters.",
                 isOwned: false,
                 price: 49.90,
                 rate: 4.8),

            Book(title: "O Poder do Hábito",
                 author: "Charles Duhigg",
                 overview: "During the past two years, a young woman has transformed almost every aspect of her life. She has quit smoking, run a marathon, and been promoted. In a lab, neurologists discovered that the patterns within her brain changed in fundamental ways. Procter & Gamble advertisers watched videos of people making their bed. They were desperately trying to figure out how to sell a new product called Febreze, which was about to become one of the biggest flops in the company's history.",
                 isOwned: true,
                 price: 29.90,
                 rate: 4.8),

            Book(title: "Não Me Faça Pensar",
                 author: "Steve Krug",
                 overview: "Put a stop to usability problems! Steve Krug's classic gets a new edition from Alta Books.How many times have you felt lost on a website? How many other times have you failed to understand how an application worked? Most of the time, it's not your fault. Many are the sites or applications with development flaws that make them difficult to understand and use. Usability professionals are there to make sure this doesn't happen by getting to the root of the problem, identifying through testing the points where users 'get stuck' and proposing solutions.Steve Krug has been working as a usability consultant since the days of the dial-up connection.",
                 isOwned: false,
                 price: 73.60,
                 rate: 4.8),

            Book(title: "A Sutil Arte de Ligar o F*da-se",
                 author: "Mark Manson",
                 overview: "Coaching, self-help, personal development, positive thinking - without wanting to dismiss the value of any of this, the great truth is that sometimes we feel almost suffocated in the face of endless pressure to appear optimistic all the time. It is a social sin to let oneself down when things are not going well. No one can simply fail without learning anything from it. It doesn't work anymore. It is unbearable. And that's where the revolutionary and subtle art of turning the fuck on comes in.",
                 isOwned: false,
                 price: 29.90,
                 rate: 4.6)
        ]
    }
}
