//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Violet Lavender Love on 5/11/20.
//  Copyright © 2020 Love. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var WordLabel: UILabel!
    @IBOutlet var DefinitionTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    var vocabWord: VocabularyWord?
    func updateViews() {
        
        if let unwrappedVocabWord = vocabWord {
            
            WordLabel.text = unwrappedVocabWord.word
            
            DefinitionTextView.text = unwrappedVocabWord.definition
            
        }
    }
}
