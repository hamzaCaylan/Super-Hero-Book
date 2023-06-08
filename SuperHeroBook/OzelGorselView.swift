//
//  OzelGorselView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red,lineWidth:5)).shadow(radius: 12)
            .frame(height: 300)
        
        
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("1"))
    }
}
