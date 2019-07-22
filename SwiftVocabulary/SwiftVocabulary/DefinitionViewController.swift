//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by John Kouris on 7/21/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    // MARK: - View methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    // MARK: - Private methods
    
    func updateViews() {
        if let vocabWord = vocabWord {
            wordLabel.text = vocabWord.word
            definitionTextView.text = vocabWord.definition
        }
    }

}
