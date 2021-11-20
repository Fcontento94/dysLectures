//
//  ReadingView.swift
//  DysLectures
//
//  Created by Federica Contento on 19/11/21.
//

import Foundation
import SwiftUI

struct ReadingView: View {
    
    var body: some View {
        
        ZStack {
            Image("\(bg3.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            //immagine del dyslexic ruler

        VStack{
        
            Text("Little Red Riding Wood") //sostituirr con la struttura del libro
            Text("Chapter 1")
                .padding(.bottom, 10.0)
            
        ScrollView(.vertical, showsIndicators: false) {
            
            
           VStack(spacing: 20) {
                
                VStack{
                    
                    Text("Prima parte")
                        .multilineTextAlignment(.leading)
                    .padding(.all)} //mostro numero 1 e descrizione
                
                VStack{
                    Text("Seconda parte")
                        .
                    accessibilityAddTraits([.isButton])
                        .foregroundColor(Color.red)
                        .padding(.all, 0.0)
                    Text("")
                        .multilineTextAlignment(.center)
                    .padding(.all)} //mostro numero 2 e descrizione
                
                VStack{
                    Text("Terza parte")
                        .padding(.all)
                    
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing])
                } //mostro numero 3 e descrizione
                }
            }
        }
        }
    }
}

struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingView()
    }
}

