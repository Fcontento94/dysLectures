//
//  InsertNameView.swift
//  DysLectures
//
//  Created by Federica Contento on 20/11/21.
//

import SwiftUI

struct InsertNameView: View {
    
    @State private var insertName = ""
    
    
    
    var body: some View {
        
        
        //inizio del form che contiene l'inserimento testo (TextField) e il bottoncino per confermare
        

            

            
            
        
        Form {
            
            //horizontal stack che contiene textfield e bottoncino
            
                
            Section {
                
                
                VStack{
                        
                        VStack{
                    Text("How can I call you?")
                        .font(.custom("OpenDyslexic-Regular", size: 18))
                        .padding(.all)
                    Image("monster1")
                        .padding(.all)
                        }


                    
                    HStack{
                TextField("Your Name", text: $insertName)
                    .font(.custom("OpenDyslexic-Regular", size: 18))
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "arrow.forward.circle")
                                .foregroundColor(Color.red)
                        }
                        }
            } // Fine sezione dell'inserimento testo
                
                // confermare il nome con questo bottone


 // fine HStack
        } // fine del form
        .padding(.top)

        } //fine del vertical stack che contiene tutto
    }
    }



struct InsertNameView_Previews: PreviewProvider {
    static var previews: some View {
        InsertNameView()
    }
}
