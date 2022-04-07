//
//  BookStatus.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 06/04/22.
//

import Foundation

struct BookStatusArrays {
    var nowReading: [Book]
    var nextRead: [Book]
    var read: [Book]
    var wantsToRead: [Book]

    mutating func addBookTo(book: Book, statusArray: String) {
        switch statusArray {
            case "nowReading":
                nowReading.append(book)
                break
            case "nextRead":
                nextRead.append(book)
                break
            case "read":
                read.append(book)
                break
            case "wantsToRead":
                wantsToRead.append(book)
            default:
                break
        }
    }
}
