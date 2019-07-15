//
//  VocabularyModel.swift
//  SwiftFlashCards
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import Foundation

struct Word {
    let name: String
    let definition: String
}

class FlashCard {
    var words:[Word]
    
    init(words:[Word] = []) {
        self.words = words
        addWord("variable", definition: "a special keyWord used for declaring a new value")
        addWord("constant", definition: "a keyword used to delcare a naew value")
    }
    func addWord(_ word: String, definition: String) {
        let word = Word(name: word, definition: definition)
        words.append(word)
    }
}
