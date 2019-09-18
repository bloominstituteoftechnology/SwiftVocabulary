//
//  VocabularyController.swift
//  SwfitVocabulary
//
//  Created by Donella Barcelo on 7/15/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import Foundation

class VocabularyController {
    var vocabWords: [VocabularyWord] = []
    
    init()   {
        addWords()
        
    }
    
    func addWords() {
         vocabWords = [VocabularyWord(word: "Xcode", definition: """
The integrated development environment (IDE) from Apple that is used to create, compile and test Mac OS X and iOS (iPhone/iPad/iPod) applications.
"""), VocabularyWord(word: "Swift", definition: """
    Swift is a high-level programming language developed by Apple. It is designed for writing apps for Apple platforms, including macOS, iOS, tvOS, and watchOS.
    """), VocabularyWord(word: "Constants", definition: """
       Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal.
    """), VocabularyWord(word: "apple", definition: "A Computer company")]
    }
}
