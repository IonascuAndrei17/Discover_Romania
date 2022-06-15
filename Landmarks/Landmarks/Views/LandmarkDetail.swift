//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Andy Ionascu on 30.01.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            
            VStack(){
                MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
                CircleImage(image: landmark.image)
                
                VStack(alignment: .leading){
                    
                    Text(landmark.name)
                        .font(.title)
                    
                    
                    HStack{
                        Text(landmark.region)
                            .font(.subheadline)
                        
                        
                        Spacer()
                        
                        
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
            }
        
        .padding()
    
    }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[1])
            .preferredColorScheme(.dark)
    }
}
