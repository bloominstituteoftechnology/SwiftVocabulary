//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 7/15/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    
    init() {
        vocabWords = [VocabularyWord(word: "Obtuse", definition: "annoyingly insensitive or slow to understand"),
                      VocabularyWord(word: "Origin", definition: "the point or place where something begins, arises, or is derived."),
                      VocabularyWord(word: "Oblique", definition: "neither parallel nor at a right angle to a specified or implied line; slanting.")]
    }
}
