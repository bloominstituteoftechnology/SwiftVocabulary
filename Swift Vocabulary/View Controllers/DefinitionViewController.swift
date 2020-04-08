//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Rob Vance on 4/7/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
// Mark: IBOutlet
    @IBOutlet weak var Word: UILabel!
    @IBOutlet weak var Definition: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateViews()

        // Do any additional setup after loading the view.
    }
    func UpdateViews() {
        if let unwrapVocabWord = vocabWord {
            Word.text = unwrapVocabWord.word
            Definition.text = unwrapVocabWord.definition
            Definition.backgroundColor = .green
            Word.backgroundColor = .green
            view.backgroundColor = .green
        }
    }

   

}
