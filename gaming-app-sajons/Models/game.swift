//
//  game.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/24/21.
//

import Foundation


enum GameType {
    case sooter, adventure, puzzle, survival
}
struct Game: Identifiable {
    var id: UUID = UUID()
    var name: String
    var peoplePlaying: Int = 400
    var type: GameType = .adventure
    var image: String
}


let games: [Game] = [

    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "1"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "2"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "3"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "4"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "5"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "6"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "7"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "8"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "9"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "10"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "11"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "12"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "13"
    ),
    
    Game(
        name: "Archi Zen",
        peoplePlaying: 3200,
        type: .adventure,
        image: "27"
    ),
    
]
