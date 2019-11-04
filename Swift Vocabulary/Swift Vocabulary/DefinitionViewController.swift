//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Donella Barcelo on 11/4/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordTextView: UITextView!
    
    func updateViews() {
        guard let unwrappedWord = vocabWord, isViewLoaded else {
            return }
        wordLabel.text = unwrappedWord.word
        wordTextView.text = unwrappedWord.definition
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()

           updateViews()
        }
    }
