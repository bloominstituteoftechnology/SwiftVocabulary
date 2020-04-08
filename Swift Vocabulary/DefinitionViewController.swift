//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bronson Mullens on 4/8/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord:VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            DefinitionLabel.text = unwrappedVocabWord.word
            DefinitionTextView.text = unwrappedVocabWord.definition
        }
    }
}
