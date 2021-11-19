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
    @State var Inv: Double = 0.0 //Variabile per nascondere il bottone 
    
    var body: some View {
        NavigationView{
        ZStack{
            Image("\(bg1.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.trailing, 80.0)
                .ignoresSafeArea()
            VStack{
                Text("\(upWords[Changer])")
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Regular", size: 18))
                
                Button(action: {if Controllami{
                    Controllami = false
                    Changer = Changer + 1
                    Inv = 0.8}}) //Controlla se il bottone è stato cliccato almeno una volta per permettere il cambio dei testi
                {
                    Image("hidden-monster")
                    .padding(.all)
                }
                
                Text("\(downWords[Changer])")
                .multilineTextAlignment(.center)
                .padding()
                .font(.custom("OpenDyslexic-Regular", size: 18))

                NavigationLink(destination:MonsterView()){
                    Text("It's a...")
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .font(.custom("OpenDyslexic-Regular", size: 18))
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.99, green: 0.833, blue: 0.832)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(18)
                        .opacity(Inv)
                }
                
            }
        }
        }
        .navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
}
}

struct TutorialScenes_Previews: PreviewProvider {
    static var previews: some View {
        TutorialScenes()
    }
}



