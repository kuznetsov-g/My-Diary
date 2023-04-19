//
//  MainViewCell.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct MainViewCell: View {
    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    
                    HStack{
                        Text("may 14")
                            .font(.system(size: 20, weight: .bold))
                        Spacer()
                        Text("😊")
                            .font(.system(size: 24))
                            .padding(.trailing, 10)
                    }
                    VStack{
                        Text("Первая строка текста. Первая строка текста Вторая строка текста. Вторая строка текста Третья строка текста. Третья строка текста")
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .padding(.bottom, 8)
                            .padding(.leading, 10)
                    }
                    HStack {
                        Image(systemName: "circle.fill")
                        Image(systemName: "circle.fill")
                        Image(systemName: "circle.fill")
                        Image(systemName: "circle.fill")
                    }
                }
            }
            .padding(10)
            .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
            .cornerRadius(10)
            .listRowBackground(Color.clear)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
    }
}

struct MainViewCell_Previews: PreviewProvider {
    static var previews: some View {
        MainViewCell()
    }
}
