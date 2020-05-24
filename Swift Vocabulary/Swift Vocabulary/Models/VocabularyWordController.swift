//
//  VocabularyWordController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_263 on 5/24/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

import Foundation

class VocabularyWordController {
    
    var vocabularyWords: [VocabularyWord] = [VocabularyWord(word: "First Word", definition: "The first word."),     VocabularyWord(word: "Second Word", definition: "The Second Word.")]
    
    var vocabularyWord: VocabularyWord?
    
    func addVocabularyWord(word: String, definition: String) {
        let vocabularyWord = VocabularyWord(word: word, definition: definition)
        vocabularyWords.append(vocabularyWord)
    }
    
    func deleteWord(word: VocabularyWord) {
        
    }
}
