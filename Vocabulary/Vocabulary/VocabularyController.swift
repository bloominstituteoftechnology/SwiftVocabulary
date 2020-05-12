//
//  VocabularyControllerClass.swift
//  Vocabulary
//
//  Created by Brian Cobb on 4/29/19.
//  Copyright © 2019 Kappa. All rights reserved.
//

import Foundation

import UIKit

class VocabularyController {
    var vocabWords: [VocabularyController] = []
    
    init(vocabWords: Array<Any>) {
        self.vocabWords = vocabWords as! [VocabularyController]
    }
}
