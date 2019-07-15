//
//  DefinitionViewController.swift
//  swiftVocabulary2
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    func updateViews() {
        if let vocabword = vocabWord {
           title = vocabword.word
            definitionTextField.text = vocabword.definition 
        }
    }
    @IBOutlet weak var definitionTextField: UITextView!
    
    var vocabWord: VocabularyWord?
}
