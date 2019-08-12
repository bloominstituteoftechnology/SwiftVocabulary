//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Andrew Ruiz on 8/12/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var textViewField: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    

    func updateViews() {
        print("Inside updateViews")
        if let vocabWord = vocabWord {
            print("Inside if let")
            labelField.text = vocabWord.word
            textViewField.text = vocabWord.definition
        }
    }
}
