//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Steven Leyva on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class VocabularyController {
//    let vocabWords: [VocabularyWord]
//
//    init() {
//        self.vocabWords = [VocabularyWord(word: "hey", definition: "hello")]
//
    var vocabWords: [VocabularyWord] = []
    
    init() {
        
        createVocab(with: "Struct", definition: "Structures are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.")
    }
    
    func createVocab(with word: String, definition: String) {
        let vocab = VocabularyWord(word: word, definition: definition)
        
        vocabWords.append(vocab)
    }//    }
}
