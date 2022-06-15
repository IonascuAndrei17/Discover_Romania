//
//  CircleImage.swift
//  Landmarks
//
//  Created by Andy Ionascu on 30.01.2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Rectangle())
            .overlay {
            Rectangle().stroke(.white, lineWidth: 4)
        }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("astra-park-sibiu1"))
            .preferredColorScheme(.dark)
    }
}
