//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Casualty on 7/24/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // Create var cellWord of optional type VocabularyWord
    // We are using cellWord to load the definition page with the word, definition, and example
    var cellWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        if let cellWord = cellWord {
            
            title = cellWord.word
            wordLabel.text = cellWord.word
            wordDefinitionTextView.text = cellWord.definition
            wordExampleLabel.text = cellWord.example
            
        }
    }
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var wordDefinitionTextView: UITextView!

    @IBOutlet weak var wordExampleLabel: UILabel!

}
