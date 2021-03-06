//
//  LandmarkList.swift
//  Landmark
//
//  Created by Mohammed aabid on 04/05/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
            ForEach(filteredLandmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label: {
                    LandmarkRow(landMark:landmark)
                }
            }
            .navigationTitle("Landmarks")
            }
            .listStyle(.inset)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
