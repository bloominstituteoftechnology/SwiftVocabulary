//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Thomas Sabino-Benowitz on 8/12/19.
//  Copyright © 2019 Thomas Sabino-Benowitz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var selectedWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        updateViews()
    }
    @IBOutlet weak var definedText: UILabel!
    
    @IBOutlet weak var definedWord: UILabel!
    
    func updateViews() {
        if let selectedWord = selectedWord {
            definedText.text = selectedWord.definition
            
            
            definedWord.text = selectedWord.word
            
            
            
        }
}
}


//append . array
