//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Ian Becker on 5/11/20.
//  Copyright © 2020 Ian Becker. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateViews()
    }
    func updateViews() {
    
        if let vocabWord = vocabWord {
            = vocabWord.word
            
}
}
}
