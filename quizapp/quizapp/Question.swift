//
//  Question.swift
//  quizapp
//
//  Created by Canadore Student on 2023-04-04.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers:[Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", fish = "🐬", rabbit = "🐹", turtle = "🐢"
    var definition: String {
    switch self {
    case .dog:
        return "You are incredibly outgoing. You surrond yourself with the people you love and enjoy activities with your friends"
    case .fish:
        return "Mischievous , yet mid-tempered, you enjoy doing things on your own terms."
    case .rabbit:
        return "You love everything that's soft. You are healthy and full of energy"
    case .turtle:
        return "You are wise and beyond your years, and you focus on the details. Slow and steady wins the race."
       }
    }

}

    

