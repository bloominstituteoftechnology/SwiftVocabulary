//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Cora on 5/18/20.
//  Copyright © 2020 Cora. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionText: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let unwrappedWord = vocabWord {
            wordLabel.text = unwrappedWord.word
            definitionText.text = unwrappedWord.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }

}
