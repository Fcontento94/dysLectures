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
        Text("What happens first?")
          .multilineTextAlignment(.center)
          .font(.custom("OpenDyslexic-Bold", size: 30))
          .foregroundColor(Color.black)
        
        Text("\(story1.title)")
          .foregroundColor(Color(red: 0.764, green: 0.143, blue: 0.186))
          .multilineTextAlignment(.center)
          .font(.custom("OpenDyslexic-Bold", size: 25))
        
        Text("Chapter 1")
          .multilineTextAlignment(.center)
          .font(.custom("OpenDyslexic-Bold", size: 30))
          .foregroundColor(Color.black)
        
        List {
          ForEach(stories.indices) { index in
            Item(story: stories[index])
          }
          .onMove { indexSet, index in
            self.stories.move(fromOffsets: indexSet, toOffset: index)
          }
        }.environment(\.editMode, Binding.constant(EditMode.active))
        
        Button("Check") {
          if checkStoryOrder() {
            // the order of the story is correct
            print("Correct")
            self.showsAlert.toggle()
            self.alertMessage = "All correct!"
          } else {
            // order of the story not correct
            print("Not correct")
            self.showsAlert.toggle()
            self.alertMessage = "Retry!"
          }
        }
      }.alert(self.alertMessage, isPresented: $showsAlert) {
        Button("OK", role: .cancel) { }
      }
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
        .frame(width: 100, height: 125)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.horizontal, -0)
      Text(story.correctItem)
        .padding(.all)
        .frame(width: 180, height: 125)
        .scaledToFill()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
    .padding(.horizontal, -55)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    GameView1()
  }
}


