//
//  HomePageView.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/24/21.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading) {
                        Text("Orix")
                            .font(.system(size: 48))
                            .fontWeight(.heavy)
                        
                        Text("Gaming")
                            .font(.system(size: 48))
                            .fontWeight(.medium)
                    }
                    
                    Spacer()
                    
                    Image("3d box")
                        .resizable()
                        .frame(width: 110, height: 110, alignment: .center)
                        .padding(.trailing)
                    
                }
                .padding(.vertical, 40)
                .padding(.horizontal)
                
                // list of games
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(games) { game in
                            
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
                }
                
            
            
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18, alignment: .center)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(
                                Circle().fill(
                                    Color.red.opacity(0.8)
                                )
                            )
                            .padding(.trailing)
                        
                        Text("Search")
                            .font(.caption)
                            .bold()
                        
                    },
                trailing:
                    Image("1-1")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(
                            Circle().fill(
                                Color.red.opacity(0.8)
                            )
                        )
                
            )
           
            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
