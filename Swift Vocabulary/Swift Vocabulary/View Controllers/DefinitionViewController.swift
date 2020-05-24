//
//  ViewController.swift
//  Swift Vocabulary
//
//  Created by Nelson Gonzalez on 9/18/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocaWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

    private func updateViews() {
        guard let vocaWord = vocaWord else { return }
        wordLabel.text = vocaWord.word
        definitionTextView.text = vocaWord.definition
    }

}

