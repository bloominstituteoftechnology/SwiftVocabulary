//
//  VocabularyWord.swift
//  SwiftVocabulary
//
//  Created by Miguel Marquez on 5/11/20.
//  Copyright © 2020 Miguel Marquez. All rights reserved.
//

import Foundation

struct VocabularyWord {
    let word: String
    let definition: String

    init(word: String, definition: String) {
        self.word = word
        self.definition = definition
    }
}
