//
//  DefinitionViewController.swift
//  Swift Volcabulary
//
//  Created by Nichole Davidson on 2/17/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var vocabWordLabel: UILabel!
    @IBOutlet weak var vocabDefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        
        if let unwrappedVocabWord = vocabWord {
            vocabWordLabel.text = unwrappedVocabWord.word
            vocabDefinitionTextView.text = unwrappedVocabWord.definition
        }
    }
}
