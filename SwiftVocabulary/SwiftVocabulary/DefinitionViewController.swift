//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 7/15/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit



class DefinitionViewController: UIViewController {
  
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updadeViews()
    }
    
    func updadeViews() {
        if let vocabWord = vocabWord {
        word.text = vocabWord.word
        definition.text = vocabWord.definition
            
    }
}
}
