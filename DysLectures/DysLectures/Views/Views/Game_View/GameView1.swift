//
//  GameView1.swift
//  DysLectures
//
//  Created by Antonio Pisani on 22/11/21.
//

import SwiftUI

struct GameView1: View {
    var body: some View {
        VStack{
        
            Text("\(story1.title)")
                .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
                .multilineTextAlignment(.center)
                .padding(.top, 50.0)
                .font(.custom("OpenDyslexic-Bold", size: 25))
            
           
            Text("Chapter 1")
                .multilineTextAlignment(.center)
                .padding(.top, 1.0)
                .font(.custom("OpenDyslexic-Bold", size: 30))
                    .foregroundColor(Color.black)
//            ScrollView(.horizontal){
            HStack{
            Image("\(story1.images[0])")
                    .padding(.all)
                    .frame(width: 125, height: 125)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 2)
                Image("\(story1.images[1])")
                    .padding(.all)
                        .frame(width: 125, height: 125)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 2)
                       
                        
                Image("\(story1.images[2])")
                    .padding(.all)
                        .frame(width: 125, height: 125)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 2)
            }
            
        ScrollView(.vertical, showsIndicators: true) {
           
            
            Text("\(story1.paragraphs[0])")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))
        }
        }
        
    }
}

struct GameView1_Previews: PreviewProvider {
    static var previews: some View {
        GameView1()
    }
}
