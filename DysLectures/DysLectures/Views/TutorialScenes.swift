//
//  TutorialScenes.swift
//  DysLectures
//
//  Created by Antonio Pisani on 19/11/21.
//

import SwiftUI

struct TutorialScenes: View {
    
    @State private var Changer: Int = 0
    
    var body: some View {
        ZStack{
            Image("\(bg1.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            VStack{
                Text("\(upWords[0])")
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Regular", size: 18))
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("hidden-monster")
                    .padding(.all)
                }
                
            
                
                Text("\(downWords[0])")
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

func Controllo(Cont : Bool, Inc : Int){
    if Cont {
        
    }
    
}

