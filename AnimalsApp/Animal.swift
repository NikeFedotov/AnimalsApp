//
//  Animal.swift
//  AnimalsApp
//
//  Created by Никита on 17.02.2024.
//

import Foundation

struct Animal {
    let image: String
    let title: String
    var isFavorite = false
    
    static func getAnimal() -> [Animal] {
        [
        Animal(
            image: "1",
            title: "Первое милое животное"
        ),
        Animal(
            image: "2",
            title: "Второе милое животное",
            isFavorite: true
        ),
        Animal(
            image: "3",
            title: "Третье милое животное"
        )
        ]
    }
}

enum Smile: String {
    case redHeart = "❤️"
    case whiteHeart = "🤍"
}
