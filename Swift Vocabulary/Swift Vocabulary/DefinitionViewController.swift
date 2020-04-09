//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Josh Kocsis on 4/8/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionViewText: UITextView!
    
        var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let vocab = vocabWord {
            definitionLabel.text = vocab.word
            definitionViewText.text = vocab.definition
        }
    }
    
}
