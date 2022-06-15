//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Andy Ionascu on 30.01.2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    var landmarks = ModelData().landmarks
    
    var body: some View {
        NavigationView{
        List(landmarks){landmark in
            NavigationLink {
                LandmarkDetail(landmark: landmark)
            } label: {
            LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Discover Romania")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {

    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
            .preferredColorScheme(.dark)
    }
}
