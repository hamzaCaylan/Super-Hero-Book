//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI

struct MyListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi) {superkahraman in
                NavigationLink(destination: DetayView(secilenKarakter: superkahraman), label: {
                    ListeItemView(superkahraman: superkahraman)
                })
                
            }.navigationTitle(Text("SüperKahraman Kitabı"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View { 
        MyListeView()
    }
}
