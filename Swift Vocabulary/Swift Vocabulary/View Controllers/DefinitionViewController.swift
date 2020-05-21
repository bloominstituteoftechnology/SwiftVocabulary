//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by James Sedlacek on 5/19/20.
//  Copyright © 2020 James Sedlacek. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let word = vocabWord {
            //If it is not nil, use its word and definition properties to populate the label and text view.
            wordLabel.text = word.word
            definitionTextView.text = word.definition
        }
    }

}
