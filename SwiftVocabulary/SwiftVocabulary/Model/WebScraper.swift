//
//  WebScraper.swift
//  SwiftVocabulary
//
//  Created by Shawn Gee on 2/16/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import Foundation
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
                let vocabWords = self.parse(html: html)
                completion(vocabWords)
            } else {
                print("There is no HTML to parse")
            }
        })
        .store(in: &subscriptions)
    }
    
    private func parse(html: String) -> [VocabularyWord] {
        let words = html.slices(from: "<li><strong>", to: "</strong>")
        let definitions = html.slices(from: "</strong>", to: "</li>")
        
        var vocabWords = [VocabularyWord]()
        for i in 0..<words.count {
            vocabWords.append(VocabularyWord(word: String(words[i]), definition: String(definitions[i])))
        }
        
        return vocabWords
    }
}

extension String {
    func ranges(of string: String, options: CompareOptions = .literal) -> [Range<Index>] {
        var result: [Range<Index>] = []
        var start = startIndex
        while let range = range(of: string, options: options, range: start..<endIndex) {
            result.append(range)
            start = range.lowerBound < range.upperBound ? range.upperBound : index(range.lowerBound, offsetBy: 1, limitedBy: endIndex) ?? endIndex
        }
        return result
    }
    func slices(from: String, to: String) -> [Substring] {
        let pattern = "(?<=" + from + ").*?(?=" + to + ")"
        return ranges(of: pattern, options: .regularExpression)
            .map{ self[$0] }
    }
}
