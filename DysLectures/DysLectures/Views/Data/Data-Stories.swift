//TutorialText.swift
//DysLectures

//Created by Federica Contento on 18/11/21.


import Foundation
import SwiftUI

//Come sono strutturate le storie

struct Story {
    
    var title: String
    var bookCover: String
    var chapter1: [String]
    var chapter2: [String]
    var chapter3: [String]
}

//le storie hanno 3 capitoli, all'interno dei quali ci sono degli eventi principali riassunti per fare capire la successione degli eventi. Successivamente verranno usati per il gioco di riordino delle frasi.

var stories: [Story] = []

var story1: Story = Story(title: "RedCover", bookCover: "RedRidingBook", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

var story2: Story = Story(title: "Cinderella", bookCover: "CinderellaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story3: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story4: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story5: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story6: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])


