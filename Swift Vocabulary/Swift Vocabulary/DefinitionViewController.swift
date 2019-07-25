//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Clayton Bonaguidi on 7/24/19.
//  Copyright © 2019 Clayton Bonaguidi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let word = vocabWord {
            updateViews(word: word)
        }
    }
    
    func updateViews(word: VocabularyWord) {
        
        if let word = vocabWord {
        wordLabel.text = word.word
        definitionTextView.text = word.definition
        }
    }
}
