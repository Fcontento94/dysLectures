//
//  TutorialView.swift
//  DysLectures
//
//  Created by Federica Contento on 18/11/21.
//


import SwiftUI

struct MonsterView: View {
    
    var body: some View {
        
        ZStack {
            Image("\(bg2.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
        VStack{
        
            Text("It seems like…")
                .padding(.bottom, 10.0)
            
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(spacing: 20) {
                
                VStack{
                    
                    Image("monster1")
                    Text("")
                        .multilineTextAlignment(.center)
                    .padding(.all)} //mostro numero 1 e descrizione
                
                VStack{
                    Image("monster2")
                        .
                    accessibilityAddTraits([.isButton])
                        .foregroundColor(Color.red)
                        .padding(.all, 0.0)
                    Text("")
                        .multilineTextAlignment(.center)
                    .padding(.all)} //mostro numero 2 e descrizione
                
                VStack{
                    Image("monster3")
                        .padding(.all)
                    Text("")
                    
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing])
                } //mostro numero 3 e descrizione
                }
            }
        
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("I Want It!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
            
        }
        .padding(.all) //fine VStack
        } //fine ZStack
    }
}

struct MonsterView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterView()
            .preferredColorScheme(.light)
    }
}

}
