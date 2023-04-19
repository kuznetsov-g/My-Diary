//
//  MainViewTopImage.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct MainViewTopImage: View {
    var body: some View {
        Image("city")
        
            .resizable()
            .scaledToFit()
            .overlay(
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color( #colorLiteral(red: 0.1117622033, green: 0.3012080491, blue: 0.4595500231, alpha: 1)), Color.clear]
                    ),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .edgesIgnoringSafeArea(.top)
    }
}

struct MainViewTopImage_Previews: PreviewProvider {
    static var previews: some View {
        MainViewTopImage()
    }
}
