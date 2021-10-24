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
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text("Gaming")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                    }
                    
                    Spacer()
                    
                    Image("3d box")
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                    
                }
                .padding(.vertical, 80)
                
                // list of games
                
            
            
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18, alignment: .center)
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                Circle().fill(
                                    Color.red.opacity(0.6)
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
                        .frame(width: 18, height: 18, alignment: .center)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            Circle().fill(
                                Color.red.opacity(0.6)
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
