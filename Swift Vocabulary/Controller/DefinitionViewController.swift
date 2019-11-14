//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Robert B on 11/13/19.
//  Copyright © 2019 lambda school. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let word = vocabWord {
            vocabLabel.text = word.word
            definitionTextView.text = word.definition
        }
    }
}
