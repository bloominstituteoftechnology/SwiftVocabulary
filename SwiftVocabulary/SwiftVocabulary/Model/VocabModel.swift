//
//  VocabModel.swift
//  SwiftVocabulary
//
//  Created by Aaron on 7/23/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

struct VocabularyWord {
    let name: String
    let definition: String
    
}

let variable = VocabularyWord(name: "Variable", definition: "Like C, Swift uses variables to store and refer to values by an identifying name. Swift also makes extensive use of variables whose values can’t be changed.")

let constant = VocabularyWord(name: "Constant", definition: "These are known as constants, and are much more powerful than constants in C. Constants are used throughout Swift to make code safer and clearer in intent when you work with values that don’t need to change.")

let function = VocabularyWord(name: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
