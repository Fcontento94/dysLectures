//
//  TutorialText.swift
//  DysLectures
//
//  Created by Federica Contento on 18/11/21.
//

import Foundation
import SwiftUI

struct Tutorial {
    var text1: String
    var monsterImage: String
    var text2: String
    
}

var pageTutorial: [Tutorial] = []

var page1: Tutorial = Tutorial(text1: "Oh, I heard a strange noise…", monsterImage: "hidden-monster", text2: "It seems there is someone in that bush!")

var page2: Tutorial = Tutorial(text1: "frase superiore pagina 2 tutorial", monsterImage: "hidden-monster", text2: "frase inferiore pagina 2 tutorial")

var page3: Tutorial = Tutorial(text1: "frase superiore pagina 3 tutorial", monsterImage: "hidden-monster", text2: "frase inferiore pagina 3 tutorial")

var page4: Tutorial = Tutorial(text1: "frase superiore pagina 4 tutorial", monsterImage: "hidden-monster", text2: "frase inferiore pagina 4 tutorial")



struct Background {
    var bgImage: String
}

var pageBackgounds: [Tutorial] = []

var bg1: Background = Background(bgImage: "bg1")

var bg2: Background = Background(bgImage: "bg2")


