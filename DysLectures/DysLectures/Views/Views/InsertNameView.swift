//
//  InsertNameView.swift
//  DysLectures
//
//  Created by Federica Contento on 20/11/21.
//

import SwiftUI

struct InsertNameView: View {
    
    @State private var insertName = ""
    @State var animationOpacity = 0.0
    @State var animationScale :CGFloat = 1
    
    
    var body: some View {
        
        
        //inizio del form che contiene l'inserimento testo (TextField) e il bottoncino per confermare
        
       
                        VStack{
                    Text("What did you say your name was?")
                                .padding(.all, 45.0)
                                .multilineTextAlignment(.center)
                                .font(.custom("OpenDyslexic-Bold", size: 18))
                        .scaleEffect(animationScale)
                        .onAppear{
                            let baseAnimation = Animation.easeInOut(duration: 5)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        animationScale = 0.9
                                    }
                    }
    
                            
                    Image("monster1")
                        .padding(.all)
       
                            
                            Form {
                                Section {
                            
                    HStack{
                TextField("Your Name", text: $insertName)
                    .font(.custom("OpenDyslexic-Regular", size: 18))
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "arrow.forward.circle")
                                .foregroundColor(Color.red)}
                                
                       
                                } // Fine HStack
            } //Fine VStack
                               
        }  .opacity(animationOpacity)
                                .onAppear{
                                    let fadein = Animation.easeIn(duration: 0.5)
                                    withAnimation(fadein){
                                        animationOpacity = 1.0}}
                            
    } // fine del form
        .padding(.top)
        
    }

}

struct InsertNameView_Previews: PreviewProvider {
    static var previews: some View {
        InsertNameView()
    }
}

