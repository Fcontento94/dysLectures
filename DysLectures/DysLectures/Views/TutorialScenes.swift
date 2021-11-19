//
//  TutorialScenes.swift
//  DysLectures
//
//  Created by Antonio Pisani on 19/11/21.
//

import SwiftUI

struct TutorialScenes: View {
    
    @State private var Changer: Int = 0
    @State var Controllami:  Bool = true // variabile di controllo per evitare cicli infiniti
    
    var body: some View {
        ZStack{
            Image("\(bg1.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            VStack{
                Text("\(upWords[Changer])")
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Regular", size: 18))
                
                Button(action: {if Controllami{
                    Controllami = false
                    Changer = Changer + 1}}) //Controlla se il bottone è stato cliccato almeno una volta per permettere il cambio dei testi
                {
                    Image("hidden-monster")
                    .padding(.all)
                }
                
                Text("\(downWords[Changer])")
                .multilineTextAlignment(.center)
                .padding()
                .font(.custom("OpenDyslexic-Regular", size: 18))
            }
        }
    }
}

struct TutorialScenes_Previews: PreviewProvider {
    static var previews: some View {
        TutorialScenes()
    }
}



