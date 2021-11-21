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
            Image("bg2")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
        
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
        
// Scroll dei libri
            
        HStack {
                
// Start List
                VStack{
                    Image("\(story1.bookCover)")
                    Text("\(story1.title)")
                        .font(.custom("OpenDyslexic-Regular", size: 20))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    
                }

// nuovo libro
                
                VStack{
                    Image("\(story2.bookCover)")
                    Text("\(story2.title)")
                        .font(.custom("OpenDyslexic-Regular", size: 20))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    
                }
                
                VStack{
                    Image("\(story3.bookCover)")
                    Text("\(story3.title)")
                        .font(.custom("OpenDyslexic-Regular", size: 20))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    
                }

// nuovo libro
            
            VStack{
                Image("\(story2.bookCover)")
                Text("\(story3.title)")
                    .font(.custom("OpenDyslexic-Regular", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
            }

// nuovo libro
            
            VStack{
                Image("\(story2.bookCover)")
                Text("\(story3.title)")
                    .font(.custom("OpenDyslexic-Regular", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
            }

// nuovo libro
            
            VStack{
                Image("\(story2.bookCover)")
                Text("\(story3.title)")
                    .font(.custom("OpenDyslexic-Regular", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
            }

// nuovo libro
            
            VStack{
                Image("\(story3.bookCover)")
                Text("\(story3.title)")
                    .font(.custom("OpenDyslexic-Regular", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
            }

// nuovo libro
                
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
