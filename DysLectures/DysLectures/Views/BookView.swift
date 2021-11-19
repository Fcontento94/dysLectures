//
//  BookView.swift
//  DysLectures
//
//  Created by Federica Contento on 18/11/21.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        
        ZStack {
            Image("\(bg2.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
        
        VStack{
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
               
                VStack{
                    Image("book")
                    Text("""
Cinderella
""")
                        .multilineTextAlignment(.center)
                    .padding(.all)} //libro numero 1 e descrizione
                
                VStack{
                    Image("book")
                        .padding(.all)
                    Text("""
Little Red
Riding Hood
""")
                        .multilineTextAlignment(.center)
                    .padding(.all)} //libro numero 2 e descrizione
                
                VStack{
                    Image("book")
                        .padding(.all)
                    Text("""
The Three
Little Pigs
""")
                        .multilineTextAlignment(.center)
                        .padding(.all)
                } //libro numero 3 e descrizione
                
                VStack{
                    Image("book")
                        .padding(.all)
                    Text("""
Three Billy
Goats Gruff
""")
                        .multilineTextAlignment(.center)
                        .padding(.all)
                } //libro numero 4 e descrizione
                
                
                }
            }
        
        
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Read!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
            
            }
            .padding(.all) //fine VStack
    }
        }
}

    struct BookView_Previews: PreviewProvider {
        static var previews: some View {
            BookView()
        }
    }
    }
