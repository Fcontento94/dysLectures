//
//  ContentView.swift
//  DragAndDropList
//
//  Created by Mattia Ferigutti on 23/11/21.
//

import SwiftUI

struct GameView1: View {
  
  @State private var showsAlert = false
  @State private var stories = story1.getStructuredData().shuffled()
  @State private var alertMessage: String = ""
    
  var body: some View {
    if #available(iOS 15.0, *) {
      VStack {
        
        Text("\(story1.title)")
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
          Button("Ok!", role: .cancel) { }
      }
      .navigationBarTitle(Text(""), displayMode: .inline)
    } else {
      // Fallback on earlier versions
    }
  }
  
  // Check if the story is correct
  func checkStoryOrder() -> Bool {
    for index in stories.indices {
      if stories[index].correctItem != story1.getStructuredData()[index].correctItem {
        return false
      }
    }
    return true
  }
}

struct Item : View {
  
  let story: StoryItems
  
  var body: some View {
        
    HStack {
      Image(story.imageItem)
        .resizable()
        .clipped()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 150)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.horizontal, -0)
      Text(story.correctItem)
        .padding(.all)
        .frame(width: 180, height: 150)
        .scaledToFill()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 2)
        .multilineTextAlignment(.center)
        .font(.custom("OpenDyslexic-Bold", size: 15))
        .foregroundColor(Color.black)
    }
    .padding(.horizontal, -55)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    GameView1()
  }
}


