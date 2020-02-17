//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jon Bash on 2019-10-07.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            wordLabel.text = vocabWord.word
            definitionText.text = vocabWord.definition
        }
    }

}
