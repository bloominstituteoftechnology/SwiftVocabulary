//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by admin on 7/15/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    init () {
        vocabWords = [VocabularyWord(word: "variable", definition: ""),
        VocabularyWord(word: "Constant", definition: "<#T##String#>"),
        VocabularyWord(word: "Function", definition: "<#T##String#>")]
    }
}
