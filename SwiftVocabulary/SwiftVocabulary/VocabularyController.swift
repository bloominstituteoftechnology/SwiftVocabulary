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
        vocabWords = [VocabularyWord(word: "variable", definition: "A name associated with a changeable value of a particular type."),
        VocabularyWord(word: "Constant", definition: "A name associated with an unchanging value of a particular type."),
        VocabularyWord(word: "Function", definition: "Self contained chunks of code that perform a specific task.")]
    }
}
