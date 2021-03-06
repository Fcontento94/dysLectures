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
//        NavigationView{
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
            
           
            
        ScrollView(.vertical, showsIndicators: true) {

            Group {

Text("Chapter 1")
.multilineTextAlignment(.center)
.padding(.top, 1.0)
.font(.custom("OpenDyslexic-Bold", size: 25))
            
            Image("\(story1.images[0])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


            Text("\(story1.paragraphs[0])")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[1])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


            Text("\(story1.paragraphs[1])")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[2])")
                .padding(.all)
                .frame(width: 300.0)
                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


            Text("\(story1.paragraphs[2])")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 25))
            }
            

Group {
            
Text("Chapter 2")
.multilineTextAlignment(.center)
.padding(.top, 1.0)
.font(.custom("OpenDyslexic-Bold", size: 25))
                        
                        Image("\(story1.images[3])")
                            .padding(.all)
                            .frame(width: 300.0)
                            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                        Text("\(story1.paragraphs[3])")
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            .font(.custom("OpenDyslexic-Regular", size: 25))
                        
                        Image("\(story1.images[4])")
                            .padding(.all)
                            .frame(width: 300.0)
                            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                        Text("\(story1.paragraphs[4])")
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            .font(.custom("OpenDyslexic-Regular", size: 25))
                        
                        Image("\(story1.images[5])")
                            .padding(.all)
                            .frame(width: 300.0)
                            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                        Text("\(story1.paragraphs[5])")
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            .font(.custom("OpenDyslexic-Regular", size: 25))
            }
            

Group {
                        
Text("Chapter 3")
.multilineTextAlignment(.center)
.padding(.top, 1.0)
.font(.custom("OpenDyslexic-Bold", size: 25))
                                    
                           Image("\(story1.images[6])")
                                .padding(.all)
                                .frame(width: 300.0)
                                        .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                                    Text("\(story1.paragraphs[6])")
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                        .font(.custom("OpenDyslexic-Regular", size: 25))
                                    
                                    Image("\(story1.images[7])")
                                        .padding(.all)
                                        .frame(width: 300.0)
                                        .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                                    Text("\(story1.paragraphs[7])")
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                        .font(.custom("OpenDyslexic-Regular", size: 25))
                                    
                                    Image("\(story1.images[8])")
                                        .padding(.all)
                                        .frame(width: 300.0)
                                        .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)


                                    Text("\(story1.paragraphs[8])")
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                        .font(.custom("OpenDyslexic-Regular", size: 25))
                        }
//            NavigationLink(destination: GameView1()){
Button(action:{
                
}, label: {
    
    NavigationLink(destination: GameView1()) {
    Text("Go to Play!")
        .padding()
        .font(.custom("OpenDyslexic-Bold", size: 20))
     
        .foregroundColor(Color.white)
        .frame(width: 200, height: 60)
        .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
        .cornerRadius(20)
    }

})
.padding(.bottom, 115.0)
            }
                } //FINE STORIA > fine vstack
        }
        .padding(.horizontal)
        }
        }
//    } 


struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingView()
    }
}

//}
