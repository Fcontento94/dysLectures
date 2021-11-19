//
//  Data-Monsters.swift
//  DysLectures
//
//  Created by Federica Contento on 19/11/21.
//


import Foundation
import SwiftUI

//Come sono strutturate le storie

struct Monster {
    
    var Name: String
    var imageMonster: String
    var number: Int
    var description: String
}

//le storie hanno 3 capitoli, all'interno dei quali ci sono degli eventi principali riassunti per fare capire la successione degli eventi. Successivamente verranno usati per il gioco di riordino delle frasi.

var monsters: [Monster] = []

var monster1: Monster = Monster(Name: "Coco", imageMonster: "monster1", number: 1, description: "A Red Monster with blue eyes")
var monster2: Monster = Monster(Name: "Coco", imageMonster: "monster2", number: 1, description: "A purple Alien with Red eyes")
var monster3: Monster = Monster(Name: "Coco", imageMonster: "monster3", number: 1, description: "A pizza demon with Red tomatoes")




