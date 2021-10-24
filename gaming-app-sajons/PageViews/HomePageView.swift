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
                HStack(alignment: .center) {
                    
                    VStack(alignment: .leading) {
                        Text("Orix")
                            .font(.system(size: 48))
                            .fontWeight(.heavy)
                        
                        Text("Gaming")
                            .font(.system(size: 44))
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
                            .frame(width: 19, height: 19, alignment: .center)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(
                                Circle().fill(
                                    Color.red.opacity(0.9)
                                )
                            )
                            .padding(.trailing, 2)
                        
                        Text("Search")
                            .font(.body)
                            .fontWeight(.medium)
                        
                    },
                trailing:
                    Image("1-1")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                
            )
           
            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
