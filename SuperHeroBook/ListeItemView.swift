//
//  ListeItemView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI

struct ListeItemView: View {
    var superkahraman : Superkahraman
    var body: some View {
        
        HStack{
            Image(superkahraman.gorselIsmi).resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red,lineWidth:5)).shadow(radius: 12)
                .frame(width: 100,height: 100)
            Spacer()
            Text(superkahraman.isim)
            Spacer()
            Spacer()
        }
    }
}

struct ListeItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListeItemView(superkahraman: batman)
    }
}
