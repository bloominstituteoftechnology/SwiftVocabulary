//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Claudia Contreras on 1/28/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?

    @IBOutlet var WordLabel: UILabel!
    @IBOutlet var definitionTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            WordLabel.text = vocabWord.word
            definitionTextField.text = vocabWord.definition
        }
    }

}
