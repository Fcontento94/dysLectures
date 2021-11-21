////
////  TutorialScenes.swift
////  DysLectures
////
////  Created by Antonio Pisani on 19/11/21.
////
//
//import SwiftUI
//
//struct TutorialScenes: View {
//    @State private var Changer: Int = 0
//    @State var Controllami:  Bool = true // variabile di controllo per evitare cicli infiniti
//    @State var Inv: Double = 0.0 //Variabile per nascondere il bottone
//    
//    var body: some View {
//        NavigationView{
//        ZStack{
//            Image("bg2")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.trailing, 80.0)
//                .ignoresSafeArea()
//            
//            VStack{
//                
//                Button(action: {if Controllami{
//                    Controllami = false
//                    Changer = Changer + 1
//                    Inv = 0.8}}) //Controlla se il bottone è stato cliccato almeno una volta per permettere il cambio dei testi
//                {
//                   
//                }
//               
//
//                NavigationLink(destination:BookView()){
//                    
//                    VStack{
//                    
//                        Text("Welcome Back!")
//                            .foregroundColor(Color.black)
//                            .padding(.bottom, 50.0)
//                            .multilineTextAlignment(.center)
//                            .font(.custom("OpenDyslexic-Bold", size: 30))
//                        
//                        Image("\(monster1.imageMonster)")
//                            
//                            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing], 70.0/*@END_MENU_TOKEN@*/)
//                        
//                        Text("Start Reading!")
//                            .padding()
//                            .font(.custom("OpenDyslexic-Bold", size: 25))
//                            .foregroundColor(Color.white)
//                            .frame(width: 250, height: 60)
//                            .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
//                            .cornerRadius(20)
//                        
//                    }
//                }
//                
//            }
//        }
//        }
//        .navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
//}
//}
//
//struct TutorialScenes_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialScenes()
//    }
//}
//
//
//
