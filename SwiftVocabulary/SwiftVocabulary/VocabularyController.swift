//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Brian Vilchez on 4/29/19.
//  Copyright © 2019 Brian Vilchez. All rights reserved.
//

import Foundation
class VocabularyController {
    
    var vocabWord: [vocabularyWord] = []
    
    func createVocab() {
        
        vocabWord.append(vocabularyWord(word: "variables", definition: "associate a name (such as maximumNumberOfLoginAttempts or welcomeMessage) with a value of a particular type "))
        vocabWord.append(vocabularyWord(word:"function", definition: " self-contained chunks of code that perform a specific task."))
        vocabWord.append(vocabularyWord(word: "For in loop", definition: " iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string."))
    }
}
