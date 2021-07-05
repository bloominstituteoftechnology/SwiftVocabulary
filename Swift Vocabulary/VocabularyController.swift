//
//  VocabularyController.swift
//  Swift Vocabulary
//
//  Created by Andrew Ruiz on 7/15/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords : [VocabularyWord]
    
    init() {
        vocabWords = [VocabularyWord(word: "Hello", definition: "A greeting"), VocabularyWord(word: "Time", definition: "The continuous flow of events from one moment to the next")]
    }
}
