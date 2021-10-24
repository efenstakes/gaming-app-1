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
                            
                            GameCardView(game: game)
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
