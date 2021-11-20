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
            Image("\(bg3.bgImage)")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            //immagine del dyslexic ruler

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
    
            Image("book")

            Text("\(story1.chapter1[1])")
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 42))
            
            Image("book")
                
            Text("\(story1.chapter1[2])")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 42))
            
            Image("book")
            
            Text("\(story1.chapter1[3])")
                .padding(.top)
                .font(.custom("OpenDyslexic-Regular", size: 42))


                } // fine vstack
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

