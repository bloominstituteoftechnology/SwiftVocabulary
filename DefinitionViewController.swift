//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by conner on 1/29/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let vocab = vocabWord else { return }
        title = vocab.word
        definitionTextView.text = vocab.definition
    }
}
