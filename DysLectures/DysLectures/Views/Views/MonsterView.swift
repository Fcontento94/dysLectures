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
            Image("bg2")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
                
        VStack{
        
            Text("It seems like…")
                .padding()
                .font(.custom("OpenDyslexic-Bold", size: 20))
             
                .foregroundColor(Color.white)
                .frame(width: 250, height: 60)
                .background(Color(red: 1.001, green: 0.326, blue: 0.391))
                .cornerRadius(20)

            
        ScrollView(.horizontal, showsIndicators: true) {
            
            
            HStack(spacing: 20) {
                
                
                VStack{
                    
                    Button(action:{
                        
                    }, label: {
                        VStack{
                            
                            Text("\(monster1.description)")
                                .font(.custom("OpenDyslexic-Regular", size: 18))
                                .frame(width: 150, height: 100)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                            
                        Image("\(monster1.imageMonster)")
                            .font(.custom("OpenDyslexic-Bold", size: 18))
                            .padding()

                            
                            Text("Choose!")
                                .padding()
                                .font(.custom("OpenDyslexic-Bold", size: 20))
                             
                                .foregroundColor(Color.white)
                                .frame(width: 150, height: 60)
                                .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                                .cornerRadius(20)
                        }
                            
                    })
                }
                .padding(.all)
                
                VStack{
                    
                    Button(action:{
                        
                    }, label: {
                        VStack{
                            
                            Text("\(monster2.description)")
                                .font(.custom("OpenDyslexic-Regular", size: 18))
                                .frame(width: 150, height: 100)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                            
                        Image("\(monster2.imageMonster)")
                            .font(.custom("OpenDyslexic-Bold", size: 18))
                            .padding()

                            
                            Text("Choose!")
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
                            
                            Text("\(monster3.description)")
                                .font(.custom("OpenDyslexic-Regular", size: 18))
                                .frame(width: 150, height: 100)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                            
                        Image("\(monster3.imageMonster)")
                            .font(.custom("OpenDyslexic-Bold", size: 18))
                            .padding()

                            
                            Text("Choose!")
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

    }
}

struct MonsterView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterView()
    }
}



    
