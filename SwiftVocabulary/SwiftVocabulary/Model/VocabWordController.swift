//
//  VocabWordController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 8/11/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

class VocabController {
    
    var vocabWords: [VocabWord] = [VocabWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate."),
                                   VocabWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution."),
                                   VocabWord(word:"Function", definition: "Functions are self-contained chunks of code that perform a specific task.")]
    
    var vocabWord: VocabWord?
    
    func addVocabWord(word: String, definition: String) {
    let vocabWord = VocabWord(word: word, definition: definition)
        vocabWords.append(vocabWord)
    }
    
    func deleteWord(vocabWord: VocabWord) {
        
    }
}
