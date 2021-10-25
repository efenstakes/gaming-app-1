//
//  GameMiniCardView.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/25/21.
//

import SwiftUI

struct GameMiniCardView: View {
    let game: Game
    var color: Color
    
    let colors: [Color] = [ .red, .yellow, .blue, .gray ]
    
    init(game: Game) {
        self.game = game
        self.color = colors.randomElement()!
    }
    
    var body: some View {
        VStack {
            
            // image
            Image(game.image)
                .resizable()
                .scaledToFill()
                .frame(width: 230, height: 190, alignment: .center)
                .cornerRadius(20)
            
            // type
            Text("Adventure")
                .font(.caption)
                .foregroundColor(color)
                .padding(8)
                .background(
                    Rectangle().fill(
                        color.opacity(0.2)
                    )
                )
                .cornerRadius(10)
            
            // name
            Text(game.name)
                .font(.body)
                .fontWeight(.bold)
            
        }
        .clipped()
        .frame(width: 230, alignment: .center)
        .padding()
        
    }
}
