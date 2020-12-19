//
//  VocabularyWord.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/5/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import Foundation

struct VocabularyWord {
    var word: String
    var definition: String

    static let mockWords: [VocabularyWord] = [
        VocabularyWord(word: "var",
                       definition: "In Swift, a variable is a mutable property."),
        VocabularyWord(word: "let",
                       definition: "In Swift, a let is an immutable property, also known as a constant."),
        VocabularyWord(word: "optional",
                       definition: "Think of a box. You don't know what's in it until you unwrap it. An optional is a property with a value that may be nil (nothing).")
    ]
}
