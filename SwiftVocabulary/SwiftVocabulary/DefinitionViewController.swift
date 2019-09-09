//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Jonalynn Masters on 9/9/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var definitionOfWord: VocabularyWord?
    
    @IBOutlet weak var Word: UILabel!
    @IBOutlet weak var DefinitionOfWord: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    func updateViews() {
        if let vocabWord = definitionOfWord {
            Word.text = vocabWord.word
            DefinitionOfWord.text = vocabWord.definition
        }
    }
}









