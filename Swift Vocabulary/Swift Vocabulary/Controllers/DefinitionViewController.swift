//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Sammy Alvarado on 4/8/20.
//  Copyright © 2020 Sammy Alvarado. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var textViewbox: UITextView!
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        wordLabel.text = vocabWord?.word
        textViewbox.text = vocabWord?.definitions
        }
   
}
