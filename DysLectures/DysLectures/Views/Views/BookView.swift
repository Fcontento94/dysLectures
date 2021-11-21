//
//  TutorialView.swift
//  DysLectures
//
//  Created by Federica Contento on 18/11/21.
//


import SwiftUI

struct BookView: View {
    
    var body: some View {
        
NavigationView{

        ZStack {
            Image("bg2")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
    
        VStack{
        
//            Text("Library")
//                .padding()
//                .font(.custom("OpenDyslexic-Bold", size: 20))
//
//                .foregroundColor(Color.white)
//                .frame(width: 250, height: 60)
//                .background(Color(red: 1.001, green: 0.326, blue: 0.391))
//                .cornerRadius(20)

            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack(alignment: .center, spacing: 20) {

                    /*
                     Button(action: {
                         print("Floating Button Click")
                     }, label: {
                         NavigationLink(destination: AddItemView()) {
                              Text("Open View")
                          }
                     })
                     */
                    
                    VStack{
                        
                        Button(action:{
                            
                    
                        }, label: {
                            
                            NavigationLink(destination: ReadingView()) {
                                VStack{
                                    
                                    Text("\(story1.title)")
                                        .font(.custom("OpenDyslexic-Regular", size: 18))
                                        .frame(width: 150, height: 100)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.black)
                                    
                                    Image("\(story1.bookCover)")
                                    .font(.custom("OpenDyslexic-Bold", size: 18))
                                    .padding()

                                    
                                    Text("Read!")
                                        .padding()
                                        .font(.custom("OpenDyslexic-Bold", size: 20))
                                     
                                        .foregroundColor(Color.white)
                                        .frame(width: 150, height: 60)
                                        .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                                        .cornerRadius(20)
                                }
                             }
                            
                                
                        })
                    }
                    .padding(.all, 0.0)
                    
                    VStack{
                        
                        Button(action:{
                            
                        }, label: {
                            VStack{
                                
                                Text("\(story2.title)")
                                    .font(.custom("OpenDyslexic-Regular", size: 18))
                                    .frame(width: 150, height: 100)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.black)
                                
                            Image("\(story2.bookCover)")
                                .font(.custom("OpenDyslexic-Bold", size: 18))
                                .padding()

                                
                                Text("Read!")
                                    .padding()
                                    .font(.custom("OpenDyslexic-Bold", size: 20))
                                 
                                    .foregroundColor(Color.white)
                                    .frame(width: 150, height: 60)
                                    .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                                    .cornerRadius(20)
                            }
                                
                        })
                        
                        
                    }
                    
                    VStack{
                        
                        Button(action:{
                            
                        }, label: {
                            VStack{
                                
                                Text("\(story3.title)")
                                    .font(.custom("OpenDyslexic-Regular", size: 18))
                                    .frame(width: 150, height: 100)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.black)
                                
                                Image("\(story3.bookCover)")
                                .font(.custom("OpenDyslexic-Bold", size: 18))
                                .padding()

                                
                                Text("Read!")
                                    .padding()
                                    .font(.custom("OpenDyslexic-Bold", size: 20))
                                 
                                    .foregroundColor(Color.white)
                                    .frame(width: 150, height: 60)
                                    .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                                    .cornerRadius(20)
                            }
                                
                        })
                    }
                    
                    
                }
                .padding(.all, 50.0)
                
            }
        
        
                
            }
            .padding(.all)
            }

        }            .navigationBarHidden(false)
 //end Navigation
        
    } // end view
}
   


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}



    
