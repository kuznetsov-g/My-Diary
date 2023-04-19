//
//  ToolBarButton.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct ToolBarButton: View {
    @Binding var isButtonRotated: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(Animation.easeInOut(duration: 0.4).delay(0.1)) {
                self.isButtonRotated.toggle()
            }
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 48))
                .foregroundColor(.blue)
                .rotationEffect(.degrees(isButtonRotated ? -45 : 0))
                .overlay(
                    Circle()
                        .stroke(Color.blue, lineWidth: 2)
                        .scaleEffect(isButtonRotated ? 1.3 : 0)
                        .opacity(isButtonRotated ? 0 : 1)
                )
        }
        .padding(.trailing, 16)
        .padding(.bottom, 16)
    }
}


struct ToolBarButton_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarButton(isButtonRotated: Binding.constant(false))
    }
}
