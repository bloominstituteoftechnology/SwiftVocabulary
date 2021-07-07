//
//  VocabularyController.swift
//  Swift Vocabulary
//
//  Created by Bradley Yin on 6/12/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import Foundation
class VocabularyController {
    var vocabWords : [VocabularyWord]
    init() {
        vocabWords = [VocabularyWord(word: "Variable", definition: "an identifier that is mutable"), VocabularyWord(word: "Constant", definition: "is an identifier that is immutable"),VocabularyWord(word: "Function", definition: "combine detailed steps into a single block of code that can be used again and again"), VocabularyWord(word: "String", definition: "in most programming languages, text values are called this")]
    }
    func addWord (word: String, definition: String){
        let newVocab = VocabularyWord(word: word, definition: definition)
        vocabWords.append(newVocab)
    }
}
