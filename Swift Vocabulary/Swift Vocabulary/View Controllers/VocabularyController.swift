//
//  VocabularyController.swift
//  Swift Vocabulary
//
//  Created by Hayden Hastings on 4/29/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation

class VocabularyController {
    
    func createVocabWords() {
        vocabWords.append(VocabularyWord(word: "Variable", definition: "not consistent or having a fixed pattern; liable to change."))
        vocabWords.append(VocabularyWord(word: "Constant", definition: "a situation or state of affairs that does not change."))
        vocabWords.append(VocabularyWord(word: "Function", definition: "work or operate in a proper or particular way."))
    }
    
    var vocabWords: [VocabularyWord] = []
}
