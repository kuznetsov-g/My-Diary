//
//  BarButtonPanelView.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct BarButtonPanelView: View {

    var body: some View {
        HStack {
            Button("", action: {
                // Действия при нажатии на кнопку
            })
            Image(systemName: "calendar")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.gray)
                .padding()
            Spacer()
            NavigationLink(destination: NewListView()) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.orange)
                    .padding()
            }
            Spacer()
                Button("", action: {

                })
                Image(systemName: "person.and.background.dotted")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding()
            }
    }
}

struct BarButtonPanelView_Previews: PreviewProvider {
    static var previews: some View {
        BarButtonPanelView()
    }
}
