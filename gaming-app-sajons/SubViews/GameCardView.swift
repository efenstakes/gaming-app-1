//
//  GameCardView.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/24/21.
//

import SwiftUI

struct GameCardView: View {
    let game: Game
    
    var body: some View {
        ZStack {
            
            // image
            Image(game.image)
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 400, alignment: .center)
            
            
            // content
            VStack(alignment: .leading) {
                
                // top actions
                HStack {
                    
                    Text("LIVE")
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .background(
                            Rectangle()
                                .fill(Color.yellow.opacity(0.7))
                                .cornerRadius(12)
                        )
                    
                    Spacer()
                    
                    Text("1.5k Playing")
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .background(
                            Rectangle()
                                .fill(Color.black.opacity(0.5))
                                .cornerRadius(12)
                        )
                    
                }
                .padding()
                
                Spacer()
                
                
                HStack {
                    
                    VStack {
                        
                        Text("Lego")
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        
                        Text(game.name)
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Rectangle()
                                .fill(Color.red.opacity(0.7))
                                .cornerRadius(12)
                        )
                    
                }
                .padding()
                .background(
                    LinearGradient(
                        colors: [
                            .black.opacity(0.3),
                            .black.opacity(0.6),
                            .black.opacity(0.7),
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                
            }
            .foregroundColor(.white)
            
                
            
        }
        .clipped()
        .cornerRadius(32)
        .frame(width: 240, height: 400, alignment: .center)
        .padding()
    }
}

struct GameCardView_Previews: PreviewProvider {
    static var previews: some View {
        GameCardView()
    }
}
