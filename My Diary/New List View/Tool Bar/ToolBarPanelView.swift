//
//  ToolBarView.swift
//  My Diary
//
//  Created by Георгий Кузнецов on 4/18/23.
//

import SwiftUI

struct ToolBarPanelView: View {
   
    @Binding var showImagePicker: Bool
    @Binding var isPanelShown: Bool
    @State private var image: UIImage?

    struct ButtonModel: Identifiable {
        let id = UUID()
        let imageName: String
        let action: () -> Void

        var body: some View {
            Button(action: action) {
                Image(systemName: imageName)
                    .font(.system(size: 24))
                    .foregroundColor(.gray)
            }
        }
    }

    private let buttonSize: CGFloat = 24
    private let buttonPadding: CGFloat = 16
    private let bottomPadding: CGFloat = 0
    private let buttonSpacing: CGFloat = UIScreen.main.bounds.width / 32
    private let buttonTintColor = Color.gray

    private let buttonModels: [ButtonModel]

    init(showImagePicker: Binding<Bool>, isPanelShown: Binding<Bool>) {
        _showImagePicker = showImagePicker
        _isPanelShown = isPanelShown
        buttonModels = [ButtonModel(imageName: "photo", action: { showImagePicker.wrappedValue = true }),
                        ButtonModel(imageName: "star.square.on.square.fill", action: {}),
                        ButtonModel(imageName: "a.square.fill", action: {}),
                        ButtonModel(imageName: "list.bullet", action: {}),
                        ButtonModel(imageName: "mic.square.fill", action: {}),
                        ButtonModel(imageName: "tag.fill", action: {})
                        ]
    }

    var body: some View {
        HStack(spacing: buttonSpacing) {
            ForEach(buttonModels) { buttonModel in
                Button(action: buttonModel.action) {
                    Image(systemName: buttonModel.imageName)
                        .font(.system(size: buttonSize))
                        .foregroundColor(buttonTintColor)
                }
            }
        }
        .padding(buttonPadding)
        .background(Color.white)
        .cornerRadius(buttonSize)
        .shadow(radius: 10)
        .transition(.move(edge: .bottom))
        .opacity(isPanelShown ? 1 : 0)
        .animation(
            .easeInOut(duration: 0.3),
            value: isPanelShown
        )
        .sheet(isPresented: $showImagePicker) {
            if let selectedImage = image {
                Image(uiImage: selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                ImagePicker(image: $image)
            }
        }.padding(.bottom, bottomPadding)
    }
}



struct ToolBarPanelView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarPanelView(showImagePicker: Binding.constant(false), isPanelShown: Binding.constant(true))
    }
}
