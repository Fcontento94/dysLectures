//
//  InsertNameView.swift
//  DysLectures
//
//  Created by Federica Contento on 20/11/21.
//

import SwiftUI

struct InsertNameView: View {
    
    @State private var userName = ""
        
    var body: some View {
        
        
        //inizio del form che contiene l'inserimento testo (TextField) e il bottoncino per confermare
        
//        ZStack {
//            Image("bg2")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.bottom)
//                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.949, green: 0.949, blue: 0.971)/*@END_MENU_TOKEN@*/)
        
        ZStack{
            
            Rectangle().fill().frame(width: 400, height: 900)
                .foregroundColor(Color(red: 0.949, green: 0.949, blue: 0.971))
            
                        VStack{
                    Text("What did you say your name was?")
                                .padding([.top, .leading, .trailing], 80.0)
                                .multilineTextAlignment(.center)
                                .font(.custom("OpenDyslexic-Bold", size: 18))
    
                            
                    Image("monster1")
                        .padding(.all)

                            Form {
                                Section {
                            
                    HStack{
                        TextField("Enter Your Name", text: $userName, onEditingChanged: {changed in print("onEditingChanged: \(changed)")
                            
                        }) {
                            print("onCommit")
                        }
                        
                    .font(.custom("OpenDyslexic-Regular", size: 18))
                        
                        Button(action: {}) {
                            Image(systemName: "arrow.forward.circle")
                                .foregroundColor(Color.red)}
                        .keyboardType(.default)
                                
                       
                    }
            }
                               
        }
                                
                                
                            
    } // fine del form
        .padding(.top)
        
    }
    }
}
//}

struct InsertNameView_Previews: PreviewProvider {
    static var previews: some View {
        InsertNameView()
    }
}

