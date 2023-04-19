//
//  ToolBarView.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct ToolBarView: View {
    @State var isButtonRotated = false
    @State var showImagePicker = false

    var body: some View {
        HStack {
            ToolBarPanelView(showImagePicker: $showImagePicker, isPanelShown: $isButtonRotated)
                .padding(.bottom,10)
            ToolBarButton(isButtonRotated: $isButtonRotated)
        }.padding(.trailing, -20)
    }
}




struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
