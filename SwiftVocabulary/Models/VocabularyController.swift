//
//  vocabController.swift
//  SwiftVocabulary
//
//  Created by Jessie Ann Griffin on 7/24/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation

class VocabularyController {
    
    var vocabWords: Array<VocabularyWord>
    
    init() {
        vocabWords = [VocabularyWord(word: "Variable",
                                     definition: "In computer science, a local variable is a variable that is given local scope. Such a variable is accessible only from the function or block in which it is declared. In programming languages with only two levels of visibility, local variables are contrasted with global variables."),
                      VocabularyWord(word: "Constant",
                                     definition: "In computer programming, a constant is a value that cannot be altered by the program during normal execution, i.e., the value is constant."),
                      VocabularyWord(word: "Function",
                                     definition: "Functions that operate on potentially infinite data (a stream or other codata) are known as filters, and are instead connected in a pipeline, which is analogous to function composition and can execute concurrently.")]
    }
}
