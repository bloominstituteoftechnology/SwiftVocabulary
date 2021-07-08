//
//  VocabularyWord.swift
//  SwiftVocabularySelf
//
//  Created by Percy Ngan on 7/15/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class VocabularyController {
    let vocabWords: [VocabularyWord]
    
    // Is this the plain initializer?
    init() {
        vocabWords = [
                    VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false."),
                    VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods."),
                    VocabularyWord(word: "Extension", definition: "A set of additional methods and computed properties that are added to a concrete type, such as Int.")
                    ]
    }
}
