//
//  TutorialText.swift
//  DysLectures
//
//  Created by Federica Contento on 18/11/21.
//

import Foundation
import SwiftUI

//Pagine del tutorial

struct Tutorial {
    var text1: String
    var monsterImage: String
    var text2: String
    
}


var pageTutorial: [Tutorial] = []

var page1: Tutorial = Tutorial(text1: "Oh, I heard a strange noise…", monsterImage: "hidden-monster", text2: "It seems there is someone in that bush!")
var page2: Tutorial = Tutorial(text1: "Let me see…", monsterImage: "hidden-monster", text2: "Who is there!?")

// in questo caso l'immagine scelta del mostro dipenderà dalla scelta del bambino
// come fare in modo che ci sia la selezione!?

var page3: Tutorial = Tutorial(text1: "Oh, hi! I didn’t see you…", monsterImage: "monster1", text2: "I am Coco the most amazing monster in the world!")
var page4: Tutorial = Tutorial(text1: "frase superiore pagina 4 tutorial", monsterImage: "monster2", text2: "frase inferiore pagina 4 tutorial")



// immagini di background da alternare nelle view


struct Background {
    var bgImage: String
}

var pageBackgounds: [Tutorial] = []
var bg1: Background = Background(bgImage: "bg1")
var bg2: Background = Background(bgImage: "bg2")


