//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Dillon P on 7/23/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordDefinitionTextView: UITextView!
    
    
    // MARK: - Properties
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions
    
    func updateViews() {
        if let word = vocabWord {
            wordLabel.text = word.word
            wordDefinitionTextView.text = word.definition
        }
    }

}
