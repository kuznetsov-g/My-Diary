//
//  MainView.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/19/23.
//

import SwiftUI

struct MainView: View {
    var mainBackgroundColor = Color(#colorLiteral(red: 0.1117622033, green: 0.3012080491, blue: 0.4595500231, alpha: 1))
    
    var body: some View {
        NavigationView{
        VStack{
            
            MainViewTopImage()
            MainViewList()
            BarButtonPanelView()
        }.background(mainBackgroundColor)
         .edgesIgnoringSafeArea(.top)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
