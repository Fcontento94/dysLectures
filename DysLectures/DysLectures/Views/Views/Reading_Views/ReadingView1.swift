//
//  ReadingView.swift
//  DysLectures
//
//  Created by Federica Contento on 19/11/21.
//

import Foundation
import SwiftUI

struct ReadingView1: View {
  
  var body: some View {
    
    ZStack {
      Image("dyslexic-ruler-3")
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
              .font(.custom("OpenDyslexic-Bold", size: 30))
              .foregroundColor(Color.black)
            
            Image("\(story1.images[0])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            
            Text("\(story1.paragraphs[0])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[1])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            
            Text("\(story1.paragraphs[1])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[2])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            
            Text("\(story1.paragraphs[2])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
          }
          
          
          Group {
            
            Text("Chapter 2")
              .multilineTextAlignment(.center)
              .padding(.top, 1.0)
              .font(.custom("OpenDyslexic-Bold", size: 30))
              .foregroundColor(Color.black)
            
            Image("\(story1.images[3])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            
            Text("\(story1.paragraphs[3])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[4])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            
            Text("\(story1.paragraphs[4])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[5])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            Text("\(story1.paragraphs[5])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
          }
          
          
          Group {
            
            Text("Chapter 3")
              .multilineTextAlignment(.center)
              .padding(.top, 1.0)
              .font(.custom("OpenDyslexic-Bold", size: 30))
              .foregroundColor(Color.black)
            
            Image("\(story1.images[6])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
              
            Text("\(story1.paragraphs[6])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[7])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            Text("\(story1.paragraphs[7])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
            
            Image("\(story1.images[8])")
                  .resizable()
                  .clipped()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 250, height: 200)
                  .background(Color.white)
                  .cornerRadius(10)
                  .shadow(radius: 2)
                  .padding(.horizontal, -0)
            
            Text("\(story1.paragraphs[8])")
              .multilineTextAlignment(.leading)
              .padding(.top)
              .font(.custom("OpenDyslexic-Regular", size: 25))
          }
          Text("The End!")
            .multilineTextAlignment(.center)
            .padding(.top, 1.0)
            .font(.custom("OpenDyslexic-Bold", size: 30))
            .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
          
          Button(action:{
            
          }, label: {
            
            VStack{
              Image("monster1")
                    .resizable()
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 200)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding([.leading, .bottom, .trailing], 25.0)
              
              NavigationLink(destination:GameView1()) {
                Text("Reorder the Book!")
                  .padding(.top, 1.0)
                  .font(.custom("OpenDyslexic-Bold", size: 20))
                  .foregroundColor(Color.white)
                  .frame(width: 230, height: 60)
                  .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                  .cornerRadius(20)
              }
            }
          })
            .padding(.bottom, 115.0)
        } //FINE STORIA > fine vstack
      }
      .padding(.horizontal)
    }
  }
}


struct ReadingView1_Previews: PreviewProvider {
  static var previews: some View {
    ReadingView1()
  }
}

