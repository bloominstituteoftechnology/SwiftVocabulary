//
//  VocabularyWord.swift
//  SwiftVocabulary
//
//  Created by Joshua Rutkowski on 11/13/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit

struct VocabularyWord {
    let word: String
    let definition: String
}

let vocabConstant = VocabularyWord(word: "Constant", definition: "Constants associate a name with a value of a particular type. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.")

let vocabArray = VocabularyWord(word: "Array", definition: "An array stores values of the same type in an ordered list.")

let vocabFunction = VocabularyWord(word: "Functions", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
