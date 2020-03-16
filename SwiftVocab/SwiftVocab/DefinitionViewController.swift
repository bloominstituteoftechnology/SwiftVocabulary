//
//  DefinitionViewController.swift
//  SwiftVocab
//
//  Created by Harmony Radley on 3/16/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    func updateViews() {
            if let unwrappedWord = vocabWord {
                print(unwrappedWord)
                label.text = unwrappedWord.word
                textView.text = unwrappedWord.definition
        }
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
}
