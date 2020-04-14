//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by ronald huston jr on 4/11/20.
//  Copyright © 2020 HenryQuante. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionField: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    } 

    func updateViews() {
        if let vocabWord = vocabWord {
            self.wordLabel.text = vocabWord.word
            self.definitionField.text = vocabWord.definition
        }
    }
}
