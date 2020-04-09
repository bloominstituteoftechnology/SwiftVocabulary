//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Aaron Cleveland on 12/9/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedWord = vocabWord {
            DefinitionLabel.text = unwrappedWord.word
            DefinitionTextView.text = unwrappedWord.definition
        }
    }
}
