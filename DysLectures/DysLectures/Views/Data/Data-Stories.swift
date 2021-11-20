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

var story1: Story = Story(title: "Little Red Riding Hood", bookCover: "RedCover", chapter1: ["Chapter 1","Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:","The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.","The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum."], chapter2: ["","",""], chapter3: ["","",""])

var story2: Story = Story(title: "Cinderella", bookCover: "CinderellaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story3: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story4: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story5: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])

// var story6: Story = Story(title: "Titolo", bookCover: "StoriaCover", chapter1: ["","",""], chapter2: ["","",""], chapter3: ["","",""])


