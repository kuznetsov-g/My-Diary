//
//  MainViewList.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct MainViewList: View {
    var body: some View {
        List {
            ForEach(0..<10) { index in
                MainViewCell()
            }
        }   .listStyle(PlainListStyle())
            .cornerRadius(10)
            .padding(.horizontal, 10)
            
    }
}

struct MainViewList_Previews: PreviewProvider {
    static var previews: some View {
        MainViewList()
    }
}
