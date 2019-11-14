//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Joshua Rutkowski on 11/13/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var definitionOutlet: UITextView!
    
    // MARK: - Navigation

        func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            labelOutlet.text = unwrappedVocabWord.word
            definitionOutlet.text = unwrappedVocabWord.definition
        }
    }
}
