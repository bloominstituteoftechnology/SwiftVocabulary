//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Vici Shaweddy on 7/22/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import Foundation

class VocabularyController {
    var vocabWords: [VocabularyWord]
    
    init() {
        self.vocabWords = [
            VocabularyWord(word: "Variable", definition: "To store and refer to values by an identifying name."),
            VocabularyWord(word: "Constant", definition: "Variables whose values can’t be changed."),
            VocabularyWord(word: "Function", definition: "Self-contained chunks of code that perform a specific task.")
        ]
    }
    
    func addVocab(_ item: VocabularyWord) {
        vocabWords.append(item)
    }
}
