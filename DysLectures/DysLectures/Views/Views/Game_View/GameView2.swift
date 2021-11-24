//
//  ContentView.swift
//  DragAndDropList
//
//  Created by Mattia Ferigutti on 23/11/21.
//

import SwiftUI

struct GameView2: View {
  
  @State private var willMoveToNextScreen = false
  @State private var showsAlert = false
  @State private var stories = story2.getStructuredData().shuffled()
  @State private var alertMessage: String = ""
  
  var body: some View {
    if #available(iOS 15.0, *) {
      VStack {
        Text("\(story2.title)")
          .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
          .multilineTextAlignment(.center)
          .font(.custom("OpenDyslexic-Bold", size: 25))
          .padding(.horizontal)
        
        Text("Reorder the Events!")
          .multilineTextAlignment(.center)
          .font(.custom("OpenDyslexic-Bold", size: 20))
          .foregroundColor(Color.black)
          .padding(.horizontal)
        
        List {
          ForEach(stories.indices) { index in
            Item(story: stories[index])
          }
          .onMove { indexSet, index in
            self.stories.move(fromOffsets: indexSet, toOffset: index)
          }
        }.environment(\.editMode, Binding.constant(EditMode.active))
        
        Button("Check!") {
          if checkStoryOrder() {
            // the order of the story is correct
            print("Correct")
            self.showsAlert.toggle()
            self.alertMessage = "WOAH! This is the correct order! You are GREAT!"

          } else {
            // order of the story not correct
            print("Not Correct")
            self.showsAlert.toggle()
            self.alertMessage = "Wooops! I think we are wrong! Let’s try again,this Magic Book is really fun-loving!!"
          }
        }
        .padding()
        .font(.custom("OpenDyslexic-Bold", size: 20))
        .foregroundColor(Color.white)
        .frame(width: 150, height: 60)
        .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
        .cornerRadius(20)
          
      }
      .alert(self.alertMessage, isPresented: $showsAlert) {
          Button("Ok!", role: .cancel) {
            if checkStoryOrder() {
              willMoveToNextScreen = true
            }
          }
      }
      .navigationBarTitle(Text(""), displayMode: .inline)
      .navigate(to: BookView(), when: $willMoveToNextScreen)
    } else {
      // Fallback on earlier versions
    }
  }
  
  // Check if the story is correct
  func checkStoryOrder() -> Bool {
    for index in stories.indices {
      if stories[index].correctItem != story2.getStructuredData()[index].correctItem {
        return false
      }
    }
    return true
  }
}

struct GameView2_Previews: PreviewProvider {
  static var previews: some View {
    GameView2()
  }
}

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}


