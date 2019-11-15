//
//  VocabController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 11/14/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import Foundation

class VocabController {
     var vocabWord: [VocabularyWord] = []
    
    init() {
        let word1 = VocabularyWord(word: "Variable", definition: "this is flipity flopity variable!")
        let word2 = VocabularyWord(word: "Constant", definition: "this is a constant, it's not as floppity as a variable")
        let word3 = VocabularyWord(word: "array", definition: "floop!")
        vocabWord = [word1, word2, word3]
    }
}
