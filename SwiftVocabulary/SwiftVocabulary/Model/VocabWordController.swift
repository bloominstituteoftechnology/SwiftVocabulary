//
//  VocabWordController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 8/11/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

class VocabController {
    
    var vocabWords: [VocabWord] = [VocabWord(word: "Struct", definition: "")]
    
    var vocabWord: VocabWord?
    
    func addVocabWord(word: String, definition: String) {
    let vocabWord = VocabWord(word: word, definition: definition)
        vocabWords.append(vocabWord)
    }
    
    func deleteWord(vocabWord: VocabWord) {
        
    }
}
