//
//  VocabController.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/19/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import Foundation
protocol LibrarianDelegate: class {
    func updateWords()
}

class VocabController {
    weak var delegate: LibrarianDelegate?

    var words: [VocabularyWord] = VocabularyWord.mockWords {
        didSet {
            updateDelegate()
        }
    }

    func updateDelegate() {
        delegate?.updateWords()
    }

    // MARK: - Create -
    func addWord(_ word: VocabularyWord) -> Bool {
        let doesntContainWord = !words.contains(word)

        if doesntContainWord {
            words.append(word)
        }
        return doesntContainWord
    }
}
