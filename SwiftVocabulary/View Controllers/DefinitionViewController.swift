//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Vici Shaweddy on 7/22/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var definitionLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let unwrappedWord = vocabWord else {
            return
        }
        
        titleLabel.text = unwrappedWord.word
        definitionLabel.text = unwrappedWord.definition
    }
}
