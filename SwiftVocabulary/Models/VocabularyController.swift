//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Karim Boudlal and Chris Price on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class VocabularyController {
var vocabWords: [VocabularyWord] = []
    func createVocabWord() {
        vocabWords.append(VocabularyWord(word: "Variable", definition: "An object that associates a name with a value. The value can be changed in the future."))
    }
}

