//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Josh Kocsis on 4/6/20.
//  Copyright © 2020 Josh Kocsis. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard isViewLoaded else {
            return
        }
        updateViews()
        // Do any additional setup after loading the view.
    }

    func updateViews() {
        if let vocab = vocabWord {
            definitionLabel.text = vocab.word
            definitionTextView.text = vocab.definition
        }
    }
    
}
