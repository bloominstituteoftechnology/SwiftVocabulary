//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Fabiola S on 7/23/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let word = vocabWord {
        updateViews(with: word)
        }
    }
    
    // MARK: Functions
    
    func updateViews(with word: VocabularyWord) {
        
        if let word = vocabWord {
            wordLabel.text = word.word
            definitionTextView.text = word.definition
        }
    }
    


}
