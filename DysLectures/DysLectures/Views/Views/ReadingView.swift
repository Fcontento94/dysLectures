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
            Image("dyslexic-ruler")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            //immagine del dyslexic ruler

            // INIZIO STORIA
        VStack{
        
            Text("\(story1.title)")
                .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
                .multilineTextAlignment(.center)
                .padding(.top, 50.0)
                .font(.custom("OpenDyslexic-Bold", size: 25))
            
            Text("\(story1.chapter1[0])")
                .multilineTextAlignment(.center)
                .padding(.top, 1.0)
                .font(.custom("OpenDyslexic-Bold", size: 25))
            
        ScrollView(.vertical, showsIndicators: true) {
    
// IMMAGINE PARAGRAFO 1
            Image("\(story1.chapter1[1])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


            // PARAGRAFO 1
            Text("\(story1.chapter1[2])")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))

// IMMAGINE DEL PARAGRAFO 2
Image("\(story1.chapter1[3])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                
            //PARAGRAFO 2
            Text("\(story1.chapter1[4])")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))

// IMMAGINE DEL PARAGRAFO 3
Image("\(story1.chapter1[5])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            
            //PARAGRAFO 3
            Text("\(story1.chapter1[6])")
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))

            Button(action:{
                
            }, label: {
                Text("\(story1.goToExercise)")
                    .font(.custom("OpenDyslexic-Bold", size: 20))
                    .padding()
                    .foregroundColor(Color.red)
                    .frame(width: 165, height: 165)
                    .background(Color.white)
                    .cornerRadius(400)
                    
                    
            })
                .padding(.bottom, 115.0)
            
                } //FINE STORIA > fine vstack
        }
        .padding(.horizontal)
        }
        }
    }


struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingView()
    }
}

