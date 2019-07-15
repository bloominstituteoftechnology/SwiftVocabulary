//
//  VocabularyController.swift
//  Swift VOCAB
//
//  Created by Alex Shillingford on 7/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    
    init() {
        vocabWords = [VocabularyWord(word: "iOS", definition: "An operating system used for mobile devices manufactured by Apple Inc."),
                      VocabularyWord(word: "Programming", definition: "The action or process of writing computer programs."),
                      VocabularyWord(word: "Macintosh", definition: "The Macintosh was the first widely-sold personal computer with a graphical user interface (GUI) and a mouse."),
                      VocabularyWord(word: "iPad", definition: "The iPad is a touchscreen tablet PC made by Apple."),
                      VocabularyWord(word: "Swift", definition: "Happening Quickly or Prompty"),
                      VocabularyWord(word: "Objective-C", definition: "Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language."),
                      VocabularyWord(word: "Apple Inc.", definition: "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.")]
    }
}
