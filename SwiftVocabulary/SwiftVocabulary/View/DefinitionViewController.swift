//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_loaner_226 on 7/2/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionText: UITextView!
    
    var vocabWords: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let word = vocabWords else { return }
        title = word.word
        definitionText.text = word.definition
    }
    
}
