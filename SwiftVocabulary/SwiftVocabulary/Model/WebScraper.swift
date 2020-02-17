//
//  WebScraper.swift
//  SwiftVocabulary
//
//  Created by Shawn Gee on 2/16/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit
import Combine

private let glossaryURL = URL(string: "https://www.hackingwithswift.com/glossary")!

class WebScraper {
    
    var subscriptions = Set<AnyCancellable>()
    
    func fetchVocabWords(completion: @escaping ([VocabularyWord]) -> Void) {

        URLSession.shared.dataTaskPublisher(for: glossaryURL)
            .map(\.data)
        .sink(receiveCompletion: {
            print($0)
        }, receiveValue: { [weak self] in
            guard let self = self else { return }
            if let html = String(data: $0, encoding: .utf8) {
                print(html)
                let vocabWords = self.parse(html: html)
                completion(vocabWords)
            } else {
                print("There is no HTML to parse")
            }
        })
        .store(in: &subscriptions)
    }
    
    private func parse(html: String) -> [VocabularyWord] {
        let words = html.slices(from: "<li><strong>", to: ":</strong>")
        let definitions = html.slices(from: "</strong>", to: "</li>")
        
        var vocabWords = [VocabularyWord]()
        for i in 0..<words.count {
            let definition = formatCodeBlocks(inString: String(definitions[i]))
            vocabWords.append(VocabularyWord(word: String(words[i]), definition: definition))
        }
        
        return vocabWords
    }
    
    private func formatCodeBlocks(inString string: String) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: string, attributes: [
            .font: UIFont.systemFont(ofSize: 17)
        ])
        
        let codeSlices = string.slices(from: "<code>", to: "</code>")
        codeSlices.forEach {
            let range = NSRange($0.startIndex..<$0.endIndex, in: attributedString.string)
            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: range)
        }
        
        // Find tags, order them from last to first, and delete them from attributed text
        var rangesToRemove = string.ranges(of: "<code>")
        rangesToRemove += string.ranges(of: "</code>")
        rangesToRemove.sort {$0.upperBound > $1.upperBound}
        rangesToRemove.forEach { attributedString.deleteCharacters(in: NSRange($0, in: string)) }
        
        return attributedString
    }
}

