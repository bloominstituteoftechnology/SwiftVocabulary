//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by dc on 2/17/20.
//  Copyright © 2020 Diego Covarrubias. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = self.vocabWord else {
            return
        }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}
