//
//  TrendingPageView.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/25/21.
//

import SwiftUI

struct TrendingPageView: View {
    var showNavsInside: Bool = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack {
                
                // welcome section
                HStack(alignment: .center) {
                    
                    Text("Trending")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Image(systemName: "flame.fill")
                        .resizable()
                        .foregroundColor(.yellow.opacity(0.6))
                        .frame(width: 30, height: 40, alignment: .center)
                        .padding(.trailing)
                    
                }
                .padding(.top, 80)
                .padding(.bottom, 10)
                .padding(.horizontal)
                
                
                // games
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(games.reversed()) { game in
                            
                            GameMiniCardView(game: game)
                        }
                        
                        
                    }
                }
                
                
                // bottom one
                ZStack {
                    
                    Color.black.opacity(0.9)
                    
                    VStack {
                        
                        // image
                        Image(games[6].image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: .infinity, height: 160, alignment: .center)
                            .cornerRadius(24)
                            .padding(.horizontal)
                            .padding(.top)
                        
                        //
                        HStack {
                            
                            Image("1-1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 48, height: 48, alignment: .center)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                
                                // name
                                Text("League of Legends")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 1)
                                
                                // type
                                
                                Text("shooter")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                
                            }
                            
                            Spacer()
                            
                            Image(systemName: "play.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    Rectangle()
                                        .fill(Color.red)
                                        
                                )
                                .frame(width: 50, height: 50, alignment: .center)
                                .cornerRadius(10)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        
                        
                    }
                    
                    
                }
                .clipped()
                .cornerRadius(20)
                .padding(.top)
                
            }
        
            // navigation titles
            if showNavsInside  {
                HStack {
                    HStack {
                        
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 12, height: 12, alignment: .center)
                            .padding(12)
                            .foregroundColor(.white)
                            .background(
                                Circle().fill(
                                    Color.red.opacity(0.9)
                                )
                            )
                            .padding(.trailing, 2)
                        
                        Text("Back")
                            .font(.body)
                            .fontWeight(.medium)
                        
                    }
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    
                    Spacer()
                    
                    Image("1-1")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
            }
            
        }
        .navigationBarHidden( showNavsInside ? true : false )
        .navigationBarItems(
            leading:
                HStack {

                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 12, height: 12, alignment: .center)
                        .padding(12)
                        .foregroundColor(.white)
                        .background(
                            Circle().fill(
                                Color.red.opacity(0.9)
                            )
                        )
                        .padding(.trailing, 2)

                    Text("Back")
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

struct TrendingPageView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingPageView()
    }
}
