//
//  FavoriteButton.swift
//  Landmark
//
//  Created by Mohammed aabid on 04/05/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
                   isSet.toggle()
               } label: {
                   Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                       .labelStyle(.iconOnly)
                       .foregroundColor(.pink)
               }
           }
    
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
