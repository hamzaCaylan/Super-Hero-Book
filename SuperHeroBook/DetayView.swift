//
//  DetayView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenKarakter : Superkahraman
    var body: some View {
        VStack{
            MapView(kordinat: secilenKarakter.koordinatLokasyonu)
                .frame(width: UIScreen.main.bounds.width ,height: 300)
                .edgesIgnoringSafeArea(.top)
            OzelGorselView(image:Image( secilenKarakter.gorselIsmi))
                .offset(y : -250)
            
            VStack{
                HStack{
                    Text(secilenKarakter.gercekIsim).font(.largeTitle).foregroundColor(Color.blue)
                    Spacer()
                    Text(secilenKarakter.isim)
                        .font(.largeTitle)
                        .foregroundColor(Color.orange)
                }
                HStack{
                    Text(secilenKarakter.sehir)
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                    Spacer()
                    Text(secilenKarakter.meslek)
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                }
            }.padding().offset(y:-250)
            
            Spacer()
        }
        
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKarakter: batman)
    }
}
