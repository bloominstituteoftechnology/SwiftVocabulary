//
//  DefinitionViewController.swift
//  SwiftVocabularySelf
//
//  Created by Percy Ngan on 7/15/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionText: UITextView!
    
    //init(vocabWord)
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    
    }
    func updateViews() {
        guard let vocabWord = vocabWord else {return}
        wordLabel.text = vocabWord.word
        definitionText.text = vocabWord.definition
    }
}
