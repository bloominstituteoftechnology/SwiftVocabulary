//
//  DefinitionViewController.swift
//  SwiftVocab
//
//  Created by xcode Mojave on 11/13/19.
//  Copyright © 2019 xcode Mojave. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    // need a mailbox
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLbl: UILabel!
    
    @IBOutlet weak var definitionTxt: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
           if let newVocabWord = vocabWord {
            wordLbl.text = newVocabWord.word
            definitionTxt.text = newVocabWord.definition
           }
       }

}
