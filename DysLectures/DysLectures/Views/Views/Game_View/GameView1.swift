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
            
            
            Text("What happens first?")
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Bold", size: 30))
                    .foregroundColor(Color.black)
        
            Text("\(story1.title)")
                .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Bold", size: 25))
            
           
            Text("Chapter 1")
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Bold", size: 30))
                    .foregroundColor(Color.black)
            
            
            
//            ScrollView(.horizontal){
            
            VStack{
            
            HStack{
                
                Image("\(story1.images[0])")
                    .aspectRatio(contentMode: .fit)
                    .padding([.top, .leading, .bottom])
                    .frame(width: 125, height: 125)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                Text("\(story1.Correct[0])")
                    .padding(.all)
                        .frame(width: 200, height: 125)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 2)
            }
                
                HStack{
                    
                    Image("\(story1.images[1])")
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .bottom])
                        .frame(width: 125, height: 125)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    Text("\(story1.Correct[1])")
                        .padding(.all)
                            .frame(width: 200, height: 125)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 2)
                }
                
                HStack{
                    
                    Image("\(story1.images[2])")
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .bottom])
                        .frame(width: 125, height: 125)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    Text("\(story1.Correct[2])")
                        .padding(.all)
                            .frame(width: 200, height: 125)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 2)
                }
                
            }
                       
                        
                
        }
        
    }
}

struct GameView1_Previews: PreviewProvider {
    static var previews: some View {
        GameView1()
    }
}
