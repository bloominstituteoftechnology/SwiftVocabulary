//
//  Word.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import Foundation

struct Word: Equatable {
    let word: String
    let definition: String
}

class WordController {
    var words:[Word]
    
    init() {
        words = []
    }
    
    func createWord(word: String, definition:String) {
        let word = Word(word: word, definition: definition)
        words.append(word)
    }
    func deleteWord(_ element: Word){
        if let index = words.firstIndex(of: element) {
            words.remove(at: index)
        }
    }

}
