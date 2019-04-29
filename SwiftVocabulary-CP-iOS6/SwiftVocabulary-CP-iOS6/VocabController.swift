//
//  VocabController.swift
//  SwiftVocabulary-CP-iOS6
//
//  Created by Chris Price on 4/29/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import Foundation

class VocabController {
    var vocabTerms: [VocabTerm] = []
    
    func createVocabTerm() {
        vocabTerms.append(VocabTerm(term: "Variable", definition: "An object that associates a name with a value. The value can be changed in the future."))
    }
}
