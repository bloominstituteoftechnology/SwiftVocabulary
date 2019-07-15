//
//  VOcabularyController.swift
//  swiftVocabulary2
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import Foundation
class VocabularyController {
    var vocabWords:[VocabularyWord]
    init(vocabWords: [VocabularyWord] = []) {
        self.vocabWords = vocabWords
        
        addWord("variables", definition: "a keyword used to declare a new value")
        addWord("array", definition: "a collection of values in an order list")
    }
    func addWord(_ word: String, definition: String){
        let vocabWord = VocabularyWord(word: word, definition: definition)
        vocabWords.append(vocabWord)
    }
}
