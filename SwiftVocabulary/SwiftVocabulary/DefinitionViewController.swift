//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Lisa Fisher on 7/23/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let vocabWord = vocabWord {
            wordLabel.text = vocabWord.word
            definitionLabel.text = vocabWord.definition
        }
    }
        override func viewDidLoad() {
        super.viewDidLoad()
            
            updateViews()
            
    }

}

