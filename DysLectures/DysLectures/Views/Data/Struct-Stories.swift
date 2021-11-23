//TutorialText.swift
//DysLectures

//Created by Federica Contento on 18/11/21.


import Foundation
import SwiftUI

//Come sono strutturate le storie

struct Story {
  
  var title: String
  var bookCover: String
  
  var paragraphs: [String]
  var images: [String]
  var correct: [String]
    
  func getStructuredData() -> [StoryItems] {
    return [
      StoryItems(paragraphItem: paragraphs[0], imageItem: images[0], correctItem: correct[0]),
      StoryItems(paragraphItem: paragraphs[1], imageItem: images[1], correctItem: correct[1]),
      StoryItems(paragraphItem: paragraphs[2], imageItem: images[2], correctItem: correct[2]),
//      StoryItems(paragraphItem: paragraphs[3], imageItem: images[3], correctItem: correct[3]),
//      StoryItems(paragraphItem: paragraphs[4], imageItem: images[4], correctItem: correct[4]),
//      StoryItems(paragraphItem: paragraphs[5], imageItem: images[5], correctItem: correct[5]),
//      StoryItems(paragraphItem: paragraphs[6], imageItem: images[6], correctItem: correct[6]),
//      StoryItems(paragraphItem: paragraphs[7], imageItem: images[7], correctItem: correct[7]),
//      StoryItems(paragraphItem: paragraphs[8], imageItem: images[8], correctItem: correct[8])
    ]
  }
  
  //    var chapter1: [String]
  //    var chapter2: [String]
  //    var chapter3: [String]
  
  //    var goToExercise: String
}

struct StoryItems {
  var paragraphItem: String
  var imageItem: String
  var correctItem: String
}

//le storie hanno 3 capitoli, all'interno dei quali ci sono degli eventi principali riassunti per fare capire la successione degli eventi. Successivamente verranno usati per il gioco di riordino delle frasi.




