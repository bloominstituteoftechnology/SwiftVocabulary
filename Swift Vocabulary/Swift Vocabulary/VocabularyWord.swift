//
//  VocabularyWord.swift
//  Swift Vocabulary
//
//  Created by morse on 10/7/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

struct VocabularyWord: Codable {
    let word: String
    let definition: String
    
    static var ArchiveURL: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("vocabulary_words").appendingPathExtension("plist")
        return archiveURL
    }
    
    static func saveToFile(vocabularyWords: [VocabularyWord]) {

        let propertyListEncoder = PropertyListEncoder()
        let encodedVocabularyWords = try? propertyListEncoder.encode(vocabularyWords)

        try? encodedVocabularyWords?.write(to: VocabularyWord.ArchiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [VocabularyWord] {

        let propertyListDecoder = PropertyListDecoder()

        if let retrievedVocabularyWordData = try? Data(contentsOf: VocabularyWord.ArchiveURL) {
            let decodedVocabularyWords = try? propertyListDecoder.decode([VocabularyWord].self, from: retrievedVocabularyWordData)
            guard let vocabularyWords = decodedVocabularyWords else { return loadSampleVocabularyWords() }

            return vocabularyWords
        } else {
            return loadSampleVocabularyWords()
        }
    }
    
    static func loadSampleVocabularyWords () -> [VocabularyWord] {
        let vocabWords: [VocabularyWord] = [VocabularyWord(word: "Abstraction", definition: "An abstraction groups things together, so you can think of the group as a single, easier-to-remember thing instead of trying to reason about each of the elements separately. Abstraction allows programmers to make decisions and think through code logic without getting overwhelmed by details and complexity."), VocabularyWord(word: "Accessibility", definition: "Accessibility features on iOS include VoiceOver, Zoom, Invert Colors, and more. These features improve the experience for users with particular preferences or needs, possibly stemming from visual, audible, or motor impairments."), VocabularyWord(word: "Accessory View", definition: "Table view cells have an accessory view that can be used to display additional information.")]

        return vocabWords
    }
}
