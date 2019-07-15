//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Marc Jacques on 7/15/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    init () {
        vocabWords = [VocabularyWord(word: "Variable", definition: """
 are mutable values usually typified by var. These values can be changed at anytime
"""),
        VocabularyWord(word: "Constant", definition: """
are immutable values usually typified by let. These values can only be set when they are initially created. They can not be changed.
"""),
        VocabularyWord(word: "Function", definition: """
is a set of instructions that can be reused multiple times. Functions are typified by the keyword func.
""")
        ]
        
    }
}


