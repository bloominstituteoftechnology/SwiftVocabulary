//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bree Jeune on 9/18/19.
//  Copyright © 2019 Young. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionVC: UILabel!
    var vocabWord: VocabularyWord?

    @IBOutlet weak var definitionTextVC: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
   func updateViews() {
    if let vocabWord = vocabWord {
        
        definitionVC.text = vocabWord.word
        definitionTextVC.text = vocabWord.definition
            
    }
    }
    

}
