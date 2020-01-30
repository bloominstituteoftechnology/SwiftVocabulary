//
//  DefinitionViewController.swift
//  Swift Vocabulary IOS
//
//  Created by Cory Lyons on 1/29/20.
//  Copyright © 2020 Lambda, inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
    func updateViews () {
        if let word = vocabWord {
            print(word)
            title = word.Word
            definitionTextView.text = word.definition
            
        }
    }
}
