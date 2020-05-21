//
//  VocabularyWord.swift
//  SwiftVocabulary
//
//  Created by Joseph Rogers on 7/19/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import Foundation


struct VocabularyWord {
    var word: String
    var definition: String
}

let vocabVariable = VocabularyWord(word: "Variable", definition: "In computer programming, a variable or scalar is a storage location (identified by a memory address) paired with an associated symbolic name (an identifier), which contains some known or unknown quantity of information referred to as a value. The variable name is the usual way to reference the stored value, in addition to referring to the variable itself, depending on the context. This separation of name and content allows the name to be used independently of the exact information it represents. The identifier in computer source code can be bound to a value during run time, and the value of the variable may thus change during the course of program execution.")
let vocabConstant = VocabularyWord(word: "Constant", definition: "In computer programming, a constant is a value that cannot be altered by the program during normal execution, i.e., the value is constant.[a] When associated with an identifier, a constant is said to be named, although the terms constant and named constant are often used interchangeably. This is contrasted with a variable, which is an identifier with a value that can be changed during normal execution, i.e., the value is variable. Constants are useful for both programmers and compilers: For programmers they are a form of self-documenting code and allow reasoning about correctness, while for compilers they allow compile-time and run-time checks that verify that constancy assumptions are not violated, and allow or simplify some compiler optimizations.")
let vocabFunction = VocabularyWord(word: "Function", definition: "Subprograms may be defined within programs, or separately in libraries that can be used by many programs. In different programming languages, a subroutine may be called a procedure, a function, a routine, a method, or a subprogram. The generic term callable unit is sometimes used.")
let voacabOptional = VocabularyWord(word: "Optional", definition: "In programming languages (more so functional programming languages) and type theory, an option type or maybe type is a polymorphic type that represents encapsulation of an optional value; e.g., it is used as the return type of functions which may or may not return a meaningful value when they are applied. It consists of a constructor which either is empty (often named None or Nothing), or which encapsulates the original data type A (often written Just A or Some A).")




