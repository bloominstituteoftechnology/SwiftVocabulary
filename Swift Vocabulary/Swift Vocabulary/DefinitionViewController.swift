//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Blake Andrew Price on 9/18/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var theWordLabel: UILabel!
    @IBOutlet weak var theDefinitionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    var vocabWord: VocabularyWord? = nil
    
    func updateViews() {
        if let word = vocabWord {
            theWordLabel.text = word.word
            theDefinitionTextView.text = word.definition
        }
    }
}
